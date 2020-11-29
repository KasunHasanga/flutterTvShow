

import 'package:tv_show_app/Model/ShowModel.dart';

class SearchShowModel {
  ShowModel show;
  SearchShowModel({this.show});

  factory SearchShowModel.fromJson(Map<String, dynamic> json){
    return SearchShowModel(
      show: ShowModel.fromJson(json['show']),
    );
  }
}