import 'dart:convert';

KhitbahStatus khitbahStatusFromJson(String str) =>
    KhitbahStatus.fromJson(json.decode(str));

String khitbahStatusToJson(KhitbahStatus data) => json.encode(data.toJson());

class KhitbahStatus {
  int code;
  String message;
  List<KhitbahStatusData> data;

  KhitbahStatus({
    required this.code,
    required this.message,
    required this.data,
  });

  factory KhitbahStatus.fromJson(Map<String, dynamic> json) => KhitbahStatus(
        code: json["code"],
        message: json["message"],
        data: List<KhitbahStatusData>.from(
            json["data"].map((x) => KhitbahStatusData.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "message": message,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class KhitbahStatusData {
  int id;
  int from;
  int to;
  int status;
  dynamic createdAt;
  DateTime? updatedAt;
  dynamic user;

  KhitbahStatusData({
    required this.id,
    required this.from,
    required this.to,
    required this.status,
    this.createdAt,
    this.updatedAt,
    this.user,
  });

  factory KhitbahStatusData.fromJson(Map<String, dynamic> json) =>
      KhitbahStatusData(
        id: json["id"],
        from: json["from"],
        to: json["to"],
        status: json["status"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        user: json["user"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "from": from,
        "to": to,
        "status": status,
        "created_at": createdAt,
        "updated_at": updatedAt?.toIso8601String(),
        "user": user,
      };
}
