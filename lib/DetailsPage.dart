import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:tv_show_app/Model/ShowModel.dart';
import 'package:flutter_html/flutter_html.dart';

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
    widgets.add(
      Text(widget.show.name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 23),),
    );
    widgets.add(Container(
      child: Image.network(
        widget.show.image.medium.replaceAll('http', 'https'),
        height: 300,
      ),
    ));

    widgets.add(
      Text("Rating ${widget.show.rating.average}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
    );
    //widgets.add(Text('${widget.show.summary}'));
    widgets.add(Html(data: widget.show.summary,defaultTextStyle:TextStyle(fontSize: 16) ,));
    return widgets;

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.show.name),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.fromLTRB(20, 0, 15, 20),
          child: ListView.builder(itemBuilder: (BuildContext context, int index) {
            return widgets[index];
          },
          itemCount: widgets.length,),
        ),
      ),
    );
  }
}
