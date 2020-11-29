import 'package:tv_show_app/ShowModel.dart';
import 'package:flutter/material.dart';

class ShowCell extends StatefulWidget {
  final ShowModel show;

  ShowCell({Key key, this.show}) : super(key: key);

  @override
  _ShowCellState createState() => _ShowCellState();
}

class _ShowCellState extends State<ShowCell> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: EdgeInsets.all(1),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Image.network(widget.show.image.medium.replaceAll("http", "https")),
          ),
          Expanded(
            flex: 6,
            child: Text(widget.show.name),
          ),
        ],
      ),
    );
  }
}
