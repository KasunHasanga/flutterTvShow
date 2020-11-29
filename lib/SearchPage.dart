import 'package:flutter/material.dart';
import 'package:tv_show_app/ShowCell.dart';
import 'package:tv_show_app/ShowConnector.dart';
import 'package:tv_show_app/ShowModel.dart';

class SearchPage extends StatefulWidget {
  SearchPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  List<ShowModel> shows = [];

  @override
  void initState() {
    super.initState();
    getShows();
  }

  void getShows() async {
    final result= await ShowConnector.getShows();
    setState(() {
      shows =result;
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
        title: Text(widget.title),
      ),
      body: Center(
        child: ListView(children: getListViewCells(),),
      ),
    );
  }
}
