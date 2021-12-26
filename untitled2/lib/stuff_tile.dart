import 'package:flutter/material.dart';
import 'stuff.dart';

class StuffTile extends StatelessWidget {
  //const StuffGrid({ Key? key }) : super(key: key);

  //sending the data to stuff
  final Stuff? stuff;
  StuffTile({this.stuff});

  @override
  Widget build(BuildContext context) {
    //creating the list view
    return Padding(
        padding: EdgeInsets.only(top: 8.0),
        child: Card(
          margin: EdgeInsets.fromLTRB(20.0, 6.0, 20.0, 0.0),
          child: ListTile(
              leading: CircleAvatar(
                radius: 25.0,
                backgroundColor: Colors.brown,
              ),
              title: Text(stuff!.title),
              subtitle: Text(stuff!.details)),
        ));
  }
}
