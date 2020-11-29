class RatingModel {
  double average;
  RatingModel({this.average});

  factory RatingModel.fromJson(Map<String,dynamic> json){
    return RatingModel(
      average: json['average'] == null ? 0: json['average'].toDouble(),
    );
  }
}