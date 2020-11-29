import 'package:flutter/material.dart';
import 'package:tv_show_app/ShowCell.dart';
import 'package:tv_show_app/ShowConnector.dart';
import 'package:tv_show_app/Model/ShowModel.dart';

class SearchPage extends StatefulWidget {
  SearchPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  List<ShowModel> shows = [];

  // @override
  // void initState() {
  //   super.initState();
  //   getShows();
  // }

  void getShows(String searchPhrase) async {
    final result = await ShowConnector.getShows(searchPhrase);
    setState(() {
      shows = result;
    });
  }

  getListViewCells() {
    List<Widget> widgets = [];
    for (int i = 0; i < shows.length; i++) {
      widgets.add(
        ShowCell(
          show: shows[i],
        ),
      );
    }
    return widgets;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          decoration: InputDecoration(
            hintText: 'Search shows',
            prefixIcon: Icon(Icons.search),
          ),
          onChanged: (String str){
            getShows(str);
          },
        ),
      ),
      body: Center(
        child: ListView(
          children: getListViewCells(),
        ),
      ),
    );
  }
}
