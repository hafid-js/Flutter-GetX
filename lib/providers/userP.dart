import 'package:get/get.dart';

class UserProvider extends GetConnect {
  Future<Response> getUser() => get(
    'https://reqres.in/api/users/2',
    headers: {'x-api-key': 'reqres-free-v1'},
  );
}
