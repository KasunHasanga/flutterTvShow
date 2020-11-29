import 'package:tv_show_app/Model/ImageModel.dart';
import 'package:tv_show_app/Model/RatingModel.dart';

class ShowModel{

  int id;
  String name;
  String summary;
  RatingModel rating;
  ImageModel image;

  ShowModel({this.id,this.name,this.summary,this.rating,this.image});

  factory ShowModel.fromJson(Map<String, dynamic> json){
    return ShowModel(
      id: json['id'] as int,
      name: json['name'] == null? "" :json['name'] as String,
      summary: json['summary'] ==null? "" :json['summary'] as String,
      rating: json['rating'] == null? RatingModel(average: 0):RatingModel.fromJson(json['rating']),
      image: json['image'] ==null ? ImageModel(medium: ""):ImageModel.fromJson(json['image']),
    );
  }
}