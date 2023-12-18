import 'package:firebase_core/firebase_core.dart';
import 'package:my_news/utils/utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../authentication.dart';
import '../data/repo/auth_repo.dart';

part 'auth_cubit.freezed.dart';

part 'auth_cubit.g.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    AppUser? user,
  }) = _AuthState;

  factory AuthState.fromJson(Map<String, dynamic> json) =>
      _$AuthStateFromJson(json);
}

class AuthCubit extends HydratedCubit<AuthState> with CubitMaybeEmit {
  ///Singleton
  static AuthCubit get instance => _instance;
  static final AuthCubit _instance = AuthCubit._internal();

  AuthCubit._internal() : super(const AuthState());

  bool get isSignedIn => state.user != null;

  FirebaseAuth auth = FirebaseAuth.instance;

  final _authRepo = AuthRepo();

  void login(AppUser user) => emit(state.copyWith(user: user));

  Future<void> logout() async {
    await auth.signOut();
    emit(state.copyWith(user: null));
  }

  @override
  Map<String, dynamic>? toJson(AuthState state) => state.toJson();

  @override
  AuthState? fromJson(Map<String, dynamic> json) => AuthState.fromJson(json);

  Future<void> loginWithGoogle(dynamic _) async {
    final googleUser = await GoogleSignIn().signIn();
    if (googleUser == null) return;
    final googleAuth = await googleUser.authentication;

    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );
    try{
      final uCred = await auth.signInWithCredential(credential);
      if (uCred.user == null) return;


      final user = AppUser(
        id: uCred.user!.uid,
        name: uCred.user!.displayName ?? '',
        email: uCred.user!.email ?? '',
        profilePicture: uCred.user!.photoURL ?? '',
      );
      final serverUser = await _authRepo.login(user);
      login(serverUser);

    }catch(e){
      await logout();
      rethrow;

    }
  }

  Future<void> updateProfileDetails({String? profilePictureUrl,String? name}) async {
    final newUrl = profilePictureUrl ?? state.user!.profilePicture;
    final newName = name ?? state.user!.name;
    await auth.currentUser!.updatePhotoURL(newUrl);
    await auth.currentUser!.updateDisplayName(newName);
    final user = state.user!.copyWith(profilePicture: profilePictureUrl);
    emit(state.copyWith(user: user));
  }

}
