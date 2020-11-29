import 'package:tv_show_app/DetailsPage.dart';
import 'package:tv_show_app/Model/ShowModel.dart';
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
    return GestureDetector(

      child: Container(
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
      ),
      onTap: (){
        print('Ontap was callsed from shows ${widget.show.name}');
        Navigator.push(
            context,
        MaterialPageRoute(builder: (context)=>DetailsPage(show: widget.show,),
        ),
        );
      },
    );
  }
}
