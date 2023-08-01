import 'package:get/get_connect/http/src/request/request.dart';
import 'package:http/http.dart' as http;
import 'package:samawa/import/main/all_import.dart';
import 'package:samawa/models/modelsKhitbah.dart';

import '../models/modelsUser.dart';

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

  Future<Response> putUser(Map data) =>
      post('api/update-profile', data, headers: {
        'Content-Type': "application/json'",
        'Authorization': "Bearer ${box.read('token')}"
      });

  Future<Response> postKhitbah(Map data) =>
      post('api/khitbah-submission', data, headers: {
        'Content-Type': "application/json'",
        'Authorization': "Bearer ${box.read('token')}"
      });

  Future<Response> updateKhitbah(Map data) =>
      post('api/update-submission', data, headers: {
        'Content-Type': "application/json'",
        'Authorization': "Bearer ${box.read('token')}"
      });

  Future<Response> getmember() => get('api/get-user', headers: {
        'Content-Type': "application/json'",
        'Authorization': "Bearer ${box.read('token')}"
      });

  Future<Datum> getUser() async {
    final url = Uri.parse(
        'https://samawa.sigarda.com/api/get-user'); // Replace with the actual API URL

    final response = await http.get(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${box.read('token')}',
      },
    );

    if (response.statusCode == 200) {
      final jsonString = response.body;
      print(jsonString); // Print the JSON response for debugging
      final user = userFromJson(response.body);
      final data = user.data[0];
      print(data.id);
      return data;
    } else {
      throw Exception('Failed to fetch user data');
    }
  }

  Future<KhitbahData> getSubmission() async {
    final url = Uri.parse(
        'https://samawa.sigarda.com/api/get-submission'); // Replace with the actual API URL

    final response = await http.get(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${box.read('token')}',
      },
    );

    if (response.statusCode == 200) {
      final jsonString = response.body;
      print(jsonString); // Print the JSON response for debugging
      final khitbah = khitbahFromJson(response.body);
      final data = khitbah.data;
      print(data.id);
      return data;
    } else {
      throw Exception('Failed to fetch user data');
    }
  }

  // Future<KhitbahStatusData> getKhitbahStatus() async {
  //   final url = Uri.parse(
  //       'https://samawa.sigarda.com/api/get-submission'); // Replace with the actual API URL

  //   final response = await http.get(
  //     url,
  //     headers: {
  //       'Content-Type': 'application/json',
  //       'Authorization': 'Bearer ${box.read('token')}',
  //     },
  //   );

  //   if (response.statusCode == 200) {
  //     final jsonString = response.body;
  //     print(jsonString); // Print the JSON response for debugging
  //     final khitbah = khitbahFromJson(response.body);
  //     final data = khitbah.data;
  //     print(data.id);
  //     return data;
  //   } else {
  //     throw Exception('Failed to fetch user data');
  //   }
  // }

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
