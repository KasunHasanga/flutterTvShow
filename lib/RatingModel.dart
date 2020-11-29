class RatingModel {
  double avarage;
  RatingModel({this.avarage});

  factory RatingModel.fromJson(Map<String,dynamic> json){
    return RatingModel(
      avarage: json['avarage'] == null ? 0: json['avarage'].toDouble(),
    );
  }
}