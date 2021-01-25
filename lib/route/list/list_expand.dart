import 'package:flutter/material.dart';
import 'package:materialx_flutter/adapter/list_basic_adapter.dart';
import 'package:materialx_flutter/adapter/list_expand_adapter.dart';
import 'package:materialx_flutter/data/dummy.dart';
import 'package:materialx_flutter/model/people.dart';
import 'package:materialx_flutter/widget/toolbar.dart';
import 'package:toast/toast.dart';

class ListExpandRoute extends StatefulWidget {

  ListExpandRoute();

  @override
  ListExpandRouteState createState() => new ListExpandRouteState();
}

class ListExpandRouteState extends State<ListExpandRoute> {
  BuildContext context;
  List<People> items;

  @override
  void initState() {
    super.initState();
    items = Dummy.getPeopleData();
  }

  @override
  Widget build(BuildContext context) {
    this.context = context;

    return new Scaffold(
      appBar: CommonAppBar.getPrimaryAppbar(context, "Expand"),
      body: ListExpandAdapter(items).getView(),
    );
  }
}

