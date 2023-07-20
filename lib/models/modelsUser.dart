// To parse this JSON data, do
//
//     final user = userFromJson(jsonString);

import 'dart:convert';

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

class User {
  int code;
  String message;
  List<Datum> data;

  User({
    required this.code,
    required this.message,
    required this.data,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        code: json["code"],
        message: json["message"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "message": message,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class Datum {
  int id;
  String name;
  DateTime bornday;
  String gender;
  String province;
  String city;
  String phone;
  String email;
  dynamic emailVerifiedAt;
  int isVerified;
  int role;
  DateTime createdAt;
  DateTime updatedAt;

  Datum({
    required this.id,
    required this.name,
    required this.bornday,
    required this.gender,
    required this.province,
    required this.city,
    required this.phone,
    required this.email,
    required this.emailVerifiedAt,
    required this.isVerified,
    required this.role,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        name: json["name"],
        bornday: DateTime.parse(json["bornday"]),
        gender: json["gender"],
        province: json["province"],
        city: json["city"],
        phone: json["phone"],
        email: json["email"],
        emailVerifiedAt: json["email_verified_at"],
        isVerified: json["is_verified"],
        role: json["role"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "bornday":
            "${bornday.year.toString().padLeft(4, '0')}-${bornday.month.toString().padLeft(2, '0')}-${bornday.day.toString().padLeft(2, '0')}",
        "gender": gender,
        "province": province,
        "city": city,
        "phone": phone,
        "email": email,
        "email_verified_at": emailVerifiedAt,
        "is_verified": isVerified,
        "role": role,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}
