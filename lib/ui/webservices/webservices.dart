import 'dart:convert';

import 'package:al_1/ui/webservices/user.dart';
import 'package:http/http.dart' as http;

class WebServices {
  static Future<List<User>> retrieveUsers() async {
    await Future.delayed(const Duration(seconds: 1));
    final response = await http.get(Uri.parse('https://reqres.in/api/users?page=1&per_page=12'));
    if (response.statusCode != 200) {
      switch (response.statusCode) {
        case 400:
          throw Exception('Bad request');
        case 401:
          throw Exception('Unauthorized');
      }
    }

    final jsonBody = json.decode(response.body);

    final List<User> users = [];

    for (final userJson in jsonBody['data']) {
      users.add(User.fromJson(userJson));
    }

    return users;
  }
}
