// To parse this JSON data, do
//
//     final doctorModel = doctorModelFromJson(jsonString);

import 'dart:convert';

DoctorModel doctorModelFromJson(String str) =>
    DoctorModel.fromJson(json.decode(str));

String doctorModelToJson(DoctorModel data) => json.encode(data.toJson());

class DoctorModel {
  DoctorModel({
    required this.name,
    required this.image,
    required this.bookingTime,
    required this.education,
  });

  String name;
  String image;
  String bookingTime;
  List<String> education;

  factory DoctorModel.fromJson(Map<String, dynamic> json) => DoctorModel(
        name: json["name"],
        image: json["image"],
        bookingTime: json["bookingTime"],
        education: List<String>.from(json["education"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "image": image,
        "bookingTime": bookingTime,
        "education": List<dynamic>.from(education.map((x) => x)),
      };
}
