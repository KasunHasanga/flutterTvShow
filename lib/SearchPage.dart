import 'package:flutter/material.dart';
import 'package:tv_show_app/ShowConnector.dart';
class SearchPage extends StatefulWidget {
  SearchPage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  void initState() {

    super.initState();
   getShows();
  }

  void getShows() async{
    await ShowConnector.getShows();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
      ),

    );
  }
}