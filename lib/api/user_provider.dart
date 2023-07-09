import 'package:samawa/import/main/all_import.dart';

import 'package:get/get_connect/http/src/request/request.dart';

class UserProvider extends GetConnect {
  Future<Response> login(Map data) => post('/api/auth/login', data);

  Future<Response> register(Map data) => post('/api/auth/register', data);

  Future<Response> postBiodata(Map data) => post('/api/biodata', data);

  Future<Response> postCV(Map data) => post('/api/curriculum-vitae', data);

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
