import 'package:flutter/material.dart';
import 'package:materialx_flutter/adapter/grid_single_line_adapter.dart';
import 'package:materialx_flutter/data/dummy.dart';
import 'package:materialx_flutter/widget/toolbar.dart';

class GridSingleLineRoute extends StatefulWidget {
  GridSingleLineRoute();

  @override
  GridSingleLineRouteState createState() => new GridSingleLineRouteState();
}

class GridSingleLineRouteState extends State<GridSingleLineRoute> {
  BuildContext _scaffoldCtx;

  void onItemClick(int index, String obj) {
    Scaffold.of(_scaffoldCtx).showSnackBar(SnackBar(
        content: Text("Item " + index.toString() + " clicked"),
        duration: Duration(seconds: 1),
    ));
  }

  @override
  Widget build(BuildContext context) {
    List<String> items = Dummy.getNatureImages();
    items.addAll(Dummy.getNatureImages());
    items.addAll(Dummy.getNatureImages());
    items.addAll(Dummy.getNatureImages());

    return new Scaffold(
      appBar: CommonAppBar.getPrimarySettingAppbar(context, "Single Line"),
      body: new Builder(builder: (BuildContext context) {
        _scaffoldCtx = context;
        return GridSingleLineAdapter(items, onItemClick).getView();
      }),
    );
  }
}
