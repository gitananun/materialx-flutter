import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:materialx_flutter/adapter/list_basic_adapter.dart';
import 'package:materialx_flutter/data/dummy.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/model/people.dart';
import 'package:materialx_flutter/widget/toolbar.dart';

import 'package:toast/toast.dart';

class ButtonFabMoreRoute extends StatefulWidget {
  ButtonFabMoreRoute();

  @override
  ButtonFabMoreRouteState createState() => new ButtonFabMoreRouteState();
}

class ButtonFabMoreRouteState extends State<ButtonFabMoreRoute> {
  BuildContext context;
  void onItemClick(int index, People obj) {
    Toast.show(obj.name, context, duration: Toast.LENGTH_SHORT);
  }

  @override
  Widget build(BuildContext context) {
    this.context = context;

    List<People> items = Dummy.getPeopleData();
    items.addAll(Dummy.getPeopleData());
    items.addAll(Dummy.getPeopleData());

    return Scaffold(
        backgroundColor: MyColors.grey_5,
        appBar: CommonAppBar.getPrimaryAppbar(context, "FAB"),
        body: ListBasicAdapter(items, onItemClick).getView(),
        floatingActionButton: buildSpeedDial());
  }

  Widget buildSpeedDial() {
    return SpeedDial(
      elevation: 2,
      animatedIcon: AnimatedIcons.menu_close,
      curve: Curves.linear,
      animationSpeed: 100,
      backgroundColor: MyColors.accent,
      children: [
        SpeedDialChild(
          elevation: 2,
          child: Icon(Icons.mic, color: MyColors.grey_80),
          backgroundColor: MyColors.grey_20,
          onTap: () {},
        ),
        SpeedDialChild(
          elevation: 2,
          child: Icon(Icons.call, color: MyColors.grey_80),
          backgroundColor: MyColors.grey_20,
          onTap: () {},
        ),
      ],
    );
  }
}
