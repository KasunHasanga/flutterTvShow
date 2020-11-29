import 'package:flutter/material.dart';
import 'package:tv_show_app/Model/ShowModel.dart';

class DetailsPage extends StatefulWidget {
  DetailsPage({Key key, this.show}) : super(key: key);
  final ShowModel show;

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  List<Widget> widgets = [];

  @override
  void initState() {
    super.initState();
    widgets = getListViewCells();
  }

  getListViewCells() {
    List<Widget> widgets = [];
    widgets.add(Container(
      child: Image.network(
        widget.show.image.medium.replaceAll('http', 'https'),
      ),
    ));
    widgets.add(
      Text(widget.show.name),
    );
    widgets.add(
      Text("Rating ${widget.show.rating.average}"),
    );
    widgets.add(Text('${widget.show.summary}'));
    return widgets;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.show.name),
      ),
      body: Center(
        child: ListView.builder(itemBuilder: (BuildContext context, int index) {
          return widgets[index];
        },
        itemCount: widgets.length,),
      ),
    );
  }
}
