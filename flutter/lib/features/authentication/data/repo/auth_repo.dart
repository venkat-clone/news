import '../../../../configurations/network/network.dart';
import '../models/app_user_model.dart';

class AuthRepo {
  Future<AppUser> login(AppUser appUser) async {
    final response = await NetworkManager.instance.perform(
        NetworkRequest(loginEndpoint, RequestMethod.get, isAuthorized: true));
    return appUser.copyWith(
      isAdmin: response.data['isAdmin'],
    );
  }
}
