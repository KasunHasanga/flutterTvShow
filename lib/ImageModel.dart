

class ImageModel{
  String medium;
  ImageModel({this.medium});

  factory ImageModel.fromJson(Map<String,dynamic> json){
    return ImageModel(
      medium:json['medium'] ==null? " ":json['medium'] as String,
    );
  }
}