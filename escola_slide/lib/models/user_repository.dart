import 'package:flutter/foundation.dart';

import 'package:dio/dio.dart';

import 'package:escola_slide/models/entitys/user_entitys.dart';
import 'package:escola_slide/apis/api_user.dart';

class UserRepository {
  final ApiUser endpointUser = ApiUser();

  Future<UserEntity> getUserData() async {
    final Dio dio = Dio();
    // final token = await storage.read(key: 'token');
    final response = await endpointUser.getUserData(
        dio, '\$2b\$10\$BZqF.T5fzqMKdPBpavvzAOoSGEh7GTRhLyJmhm3x.1VBNGWkmtEjq');

    if (response.statusCode == 200) {
      return UserEntity.fromJson(response.data);
    } else {
      deleteToken();
      return null;
    }
  }

  Future<String> authenticate({
    @required String username,
    @required String password,
  }) async {
    await Future.delayed(Duration(seconds: 1));
    return 'token';
  }

  Future<void> deleteToken() async {
    /// delete from keystore/keychain
    await Future.delayed(Duration(seconds: 1));
    return;
  }

  Future<void> persistToken(String token) async {
    /// write to keystore/keychain
    await Future.delayed(Duration(seconds: 1));
    return;
  }

  Future<bool> hasToken() async {
    /// read from keystore/keychain
    await Future.delayed(Duration(seconds: 1));
    return false;
  }
}
