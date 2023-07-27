// To parse this JSON data, do
//
//     final khitbah = khitbahFromJson(jsonString);

import 'dart:convert';

Khitbah khitbahFromJson(String str) => Khitbah.fromJson(json.decode(str));

String khitbahToJson(Khitbah data) => json.encode(data.toJson());

class Khitbah {
  int code;
  String message;
  Data data;

  Khitbah({
    required this.code,
    required this.message,
    required this.data,
  });

  factory Khitbah.fromJson(Map<String, dynamic> json) => Khitbah(
        code: json["code"],
        message: json["message"],
        data: Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "message": message,
        "data": data.toJson(),
      };
}

class Data {
  int khitbahId;
  String guardianName;
  String guardianPhone;
  dynamic ustadzId;
  String notes;
  DateTime date;
  String time;
  DateTime updatedAt;
  DateTime createdAt;
  int id;

  Data({
    required this.khitbahId,
    required this.guardianName,
    required this.guardianPhone,
    this.ustadzId,
    required this.notes,
    required this.date,
    required this.time,
    required this.updatedAt,
    required this.createdAt,
    required this.id,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        khitbahId: json["khitbah_id"],
        guardianName: json["guardian_name"],
        guardianPhone: json["guardian_phone"],
        ustadzId: json["ustadz_id"],
        notes: json["notes"],
        date: DateTime.parse(json["date"]),
        time: json["time"],
        updatedAt: DateTime.parse(json["updated_at"]),
        createdAt: DateTime.parse(json["created_at"]),
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "khitbah_id": khitbahId,
        "guardian_name": guardianName,
        "guardian_phone": guardianPhone,
        "ustadz_id": ustadzId,
        "notes": notes,
        "date":
            "${date.year.toString().padLeft(4, '0')}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}",
        "time": time,
        "updated_at": updatedAt.toIso8601String(),
        "created_at": createdAt.toIso8601String(),
        "id": id,
      };
}
