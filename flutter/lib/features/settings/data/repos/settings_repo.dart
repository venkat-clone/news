import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:my_news/configurations/network/network.dart';

import '../../../authentication/authentication.dart';

class SettingsRepo {
  Future<void> saveSettings() async {
    //   make network request to save settings
    //   emit(newState);
  }

  Future<void> updateProfile(AppUser user, File? image) async {}

  Future<void> updateNewses() async {
    final response = NetworkManager.instance
        .perform(NetworkRequest('$newsEndpoint/update_db', RequestMethod.get));

  }
}
