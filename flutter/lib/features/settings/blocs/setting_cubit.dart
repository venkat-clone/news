import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:my_news/features/authentication/authentication.dart';
import '../../../../utils/mixins/cubit_maybe_emit_mixin.dart';
import '../../app/data/repos/storage_repo.dart';
import '../data/repos/settings_repo.dart';

part 'setting_cubit.freezed.dart';

part 'setting_cubit.g.dart';

@freezed
class SettingState with _$SettingState {
  const factory SettingState({
    @Default(false) bool notificationsEnabled,
    @Default([]) List<String> favorites,
    @JsonKey(includeFromJson: false, includeToJson: false) File? profilePicture,
  }) = _SettingState;

  factory SettingState.fromJson(Map<String, dynamic> json) =>
      _$SettingStateFromJson(json);
}

class SettingCubit extends HydratedCubit<SettingState> with CubitMaybeEmit {
  ///Singleton
  static SettingCubit get instance => _instance;
  static final SettingCubit _instance = SettingCubit._internal(SettingsRepo());
  late String newProfileName;


  SettingCubit._internal(this.repo) : super(const SettingState()){
    newProfileName = AuthCubit.instance.state.user!.name;
  }

  @override
  SettingState? fromJson(Map<String, dynamic> json) =>
      SettingState.fromJson(json);

  @override
  Map<String, dynamic>? toJson(SettingState state) => state.toJson();

  SettingsRepo repo;

  void toggleNotifications(bool value) =>
      emit(state.copyWith(notificationsEnabled: value));

  Future<void> saveSettings() async {
    //   make network request to save settings
    //   emit(newState);
    String? imageUrl;
    final authCubit = AuthCubit.instance;
    if (state.profilePicture != null) {
      imageUrl = await StorageRepo(filePath: 'profile_images/${authCubit.state.user!.id}').uploadFile(
          file: state.profilePicture!,
          name:
              '${DateTime.now().millisecondsSinceEpoch}');
    }

    await authCubit.updateProfileDetails(
      name: newProfileName,
      profilePictureUrl: imageUrl);
    emit(state.copyWith(profilePicture: null));
    // await Future.delayed(const Duration(seconds: 3));
  //   update user Details hear
  }





  void updateFavorites(List<String> newList) =>
      emit(state.copyWith(favorites: newList));

  Future<void> updateProfilePicture() async {
    print('updateProfilePicture');
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      dialogTitle: 'Pick a profile picture',
      type: FileType.image,
      allowMultiple: false,
    );
    if (result != null) {
      File file = File(result.files.single.path!);
      emit(state.copyWith(profilePicture: file));
    }
  }


  Future<void> updateNews() async  {
    await repo.updateNewses();
  }
}
