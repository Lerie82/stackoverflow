import 'package:flutter/material.dart';
import 'stuff.dart';
import 'package:provider/provider.dart';
import 'stuff_tile.dart';

class StuffList extends StatefulWidget {
  const StuffList({Key? key}) : super(key: key);

  @override
  _StuffListState createState() => _StuffListState();
}

class _StuffListState extends State<StuffList> {
  @override
  Widget build(BuildContext context) {
    final stuffs = Provider.of<List<Stuff>?>(context);
    //print(stuffs?.docs);
    if (stuffs != null) {
      stuffs.forEach((stuff) {
        print(stuff.title);
        print(stuff.details);
        print(stuff.price);
      });
    }
    return ListView.builder(
      //number of the items in list
      itemCount: stuffs?.length ?? 0,
      //return a function for every item in the list
      itemBuilder: (context, index) {
        return StuffTile(stuff: stuffs![index]);
      },
    );
  }
}
