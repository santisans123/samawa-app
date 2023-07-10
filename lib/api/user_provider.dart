import 'package:get/get_connect/http/src/request/request.dart';
import 'package:samawa/import/main/all_import.dart';

class UserProvider extends GetConnect {
  Future<Response> login(Map data) => post('api/auth/login', data, headers: {
        'Content-Type': "application/json'",
      });

  Future<Response> register(Map data) =>
      post('api/auth/register', data, headers: {
        'Content-Type': "application/json'",
        'Authorization': "Bearer ${box.read('token')}"
      });

  Future<Response> postBiodata(Map data) => post('api/biodata', data, headers: {
        'Content-Type': "application/json'",
        'Authorization': "Bearer ${box.read('token')}"
      });

  Future<Response> postCV(Map data) =>
      post('api/curriculum-vitae', data, headers: {
        'Content-Type': "application/json'",
        'Authorization': "Bearer ${box.read('token')}"
      });

  final box = GetStorage();

  @override
  void onInit() {
    httpClient.baseUrl = 'https://samawa.sigarda.com/';

    httpClient.addRequestModifier((Request request) {
      if (box.hasData('access_token'))
        request.headers['Authorization'] =
            "Bearier ${box.read('access_token')}";
      return request;
    });
  }
}
