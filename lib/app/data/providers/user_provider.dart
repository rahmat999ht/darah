import 'dart:convert';

import 'package:darah/app/data/constants/api.dart';
import 'package:get/get.dart';

import '../models/user_model.dart';

class UserProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return User.fromJson(map);
      if (map is List) return map.map((item) => User.fromJson(item)).toList();
    };
    httpClient.baseUrl = ApiConstant.apiUrl;
  }

  Future<User?> loginUser(User user) async {
    final response = await post(
      'users/login',
      user.toJsonLogin(),
      // headers: 
    );
    print(response.body);
    return response.body;
  }

  Future<Response<User>> postUser(User user) async =>  await post('users/',jsonEncode( user.toJson()),decoder: null);
  // Future<Response> deleteUser(int id) async => await delete('user/$id');
}
