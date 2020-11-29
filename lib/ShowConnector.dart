import 'package:http/http.dart' as http;


class ShowConnector{

  static Future<dynamic> getShows() async{

    var url ="https://api.tvmaze.com/search/shows?q=house-of-cards";
    http.Response response= await http.get(url);
  }


}