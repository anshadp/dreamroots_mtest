// To parse this JSON data, do
//
//     final reviewModel = reviewModelFromJson(jsonString);

import 'dart:convert';

ReviewModel reviewModelFromJson(String str) =>
    ReviewModel.fromJson(json.decode(str));

String reviewModelToJson(ReviewModel data) => json.encode(data.toJson());

class ReviewModel {
  ReviewModel({
    required this.name,
    required this.image,
    required this.reviewContent,
    required this.rating,
  });

  String name;
  String image;
  String reviewContent;
  String rating;

  factory ReviewModel.fromJson(Map<String, dynamic> json) => ReviewModel(
        name: json["name"],
        image: json["image"],
        reviewContent: json["reviewContent"],
        rating: json["rating"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "image": image,
        "reviewContent": reviewContent,
        "rating": rating,
      };
}
