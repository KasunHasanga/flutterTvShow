import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:tv_show_app/Model/showSearchModel.dart';

class ShowConnector{

  static Future<dynamic> getShows(String searchPhrase) async{
    final replacementKey='[searchPhrase]';

    var url ="https://api.tvmaze.com/search/shows?q=$replacementKey".replaceAll(replacementKey, searchPhrase);
    http.Response response= await http.get(url);

    var responseData=json.decode(response.body) as List;
    var shows=responseData.map((json) => SearchShowModel.fromJson(json).show).toList();
    return shows;

  }


}