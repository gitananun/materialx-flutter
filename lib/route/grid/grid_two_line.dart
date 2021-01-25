import 'package:flutter/material.dart';
import 'package:materialx_flutter/adapter/grid_single_line_adapter.dart';
import 'package:materialx_flutter/adapter/grid_two_line_adapter.dart';
import 'package:materialx_flutter/data/dummy.dart';
import 'package:materialx_flutter/model/image_obj.dart';
import 'package:materialx_flutter/widget/toolbar.dart';

class GridTwoLineRoute extends StatefulWidget {
  GridTwoLineRoute();

  @override
  GridTwoLineRouteState createState() => new GridTwoLineRouteState();
}

class GridTwoLineRouteState extends State<GridTwoLineRoute> {
  BuildContext _scaffoldCtx;

  void onItemClick(int index, ImageObj obj) {
    Scaffold.of(_scaffoldCtx).showSnackBar(SnackBar(
        content: Text("Item " + index.toString() + " clicked"),
        duration: Duration(seconds: 1),
    ));
  }

  @override
  Widget build(BuildContext context) {
    List<ImageObj> items = Dummy.getImageDate();
    items.addAll(Dummy.getImageDate());
    items.addAll(Dummy.getImageDate());
    items.addAll(Dummy.getImageDate());

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          backgroundColor: Colors.grey[900],
          title: Text("Two Line", style: TextStyle(color: Colors.white)),
          leading: IconButton(
            icon: Icon(Icons.menu, color: Colors.white),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search, color: Colors.white),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.more_vert, color: Colors.white),
              onPressed: () {},
            ),// overflow menu
          ]
      ),
      body: new Builder(builder: (BuildContext context) {
        _scaffoldCtx = context;
        return GridTwoLineAdapter(items, onItemClick).getView();
      }),
    );
  }
}
