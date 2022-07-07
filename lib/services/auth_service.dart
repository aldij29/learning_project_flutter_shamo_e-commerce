import 'dart:convert';

import 'package:shamo_ecommerce/models/user_model.dart';
import 'package:http/http.dart' as http;

class AuthService {
  String baseUrl = 'b932-125-164-20-181.ap.ngrok.io';

  Future<UserModel> register(
      {required String name,
      required String username,
      required String email,
      required String password}) async {
    var url = Uri.https(baseUrl, '/api/register');
    var headers = {'Content-Type': 'application/json'};
    var body = jsonEncode({
      'name': name,
      'username': username,
      'email': email,
      'password': password
    });

    var response = await http.post(
      url,
      headers: headers,
      body: body,
    );

    print(response.body);

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body)['data'];
      UserModel user = UserModel.fromJson(data['user']);
      user.token = 'Bearer ' + data['access_token'];

      return user;
    } else {
      throw Exception('Gagal Register');
    }
  }

  Future<UserModel> login(
      {required String email, required String password}) async {
    var url = Uri.https(baseUrl, '/api/login');
    var headers = {'Content-Type': 'application/json'};
    var body = jsonEncode({'email': email, 'password': password});

    var response = await http.post(
      url,
      headers: headers,
      body: body,
    );

    print(response.body);

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body)['data'];
      UserModel user = UserModel.fromJson(data['user']);
      user.token = 'Bearer ' + data['access_token'];

      return user;
    } else {
      throw Exception('Gagal Login');
    }
  }
}
