import 'package:flutter/material.dart';
import 'package:materialx_flutter/adapter/list_people_more_adapter.dart';
import 'package:materialx_flutter/data/dummy.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/model/people.dart';
import 'package:toast/toast.dart';

class MenuOverflowListRoute extends StatefulWidget {

  MenuOverflowListRoute();

  @override
  MenuOverflowListRouteState createState() => new MenuOverflowListRouteState();
}


class MenuOverflowListRouteState extends State<MenuOverflowListRoute> {

  List<People> items;
  BuildContext context;

  void onItemClick(int index, People obj) {
    Toast.show(obj.name, context, duration: Toast.LENGTH_SHORT);
  }

  @override
  void initState() {
    super.initState();
    items = Dummy.getPeopleData();
    items.addAll(Dummy.getPeopleData());
  }

  @override
  Widget build(BuildContext context) {
    this.context = context;

    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
          backgroundColor: MyColors.primary,
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () { },
            ),
          ]
      ),
      body: ListPeopleMoreAdapter(items, onItemClick).getView(),
    );
  }

}
