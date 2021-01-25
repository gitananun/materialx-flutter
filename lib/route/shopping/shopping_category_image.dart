import 'package:flutter/material.dart';
import 'package:materialx_flutter/adapter/list_category_image_adapter.dart';
import 'package:materialx_flutter/data/dummy.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/model/shop_category.dart';
import 'package:toast/toast.dart';

class ShoppingCategoryImageRoute extends StatefulWidget {

  ShoppingCategoryImageRoute();

  @override
  ShoppingCategoryImageRouteState createState() => new ShoppingCategoryImageRouteState();
}


class ShoppingCategoryImageRouteState extends State<ShoppingCategoryImageRoute> {

  BuildContext context;
  void onItemClick(int index, ShopCategory obj) {
    Toast.show("News " + index.toString() + "clicked", context, duration: Toast.LENGTH_SHORT);
  }

  @override
  Widget build(BuildContext context) {
    this.context = context;
    List<ShopCategory> items = Dummy.getShoppingCategory();
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          brightness: Brightness.dark,
          backgroundColor: MyColors.primary,
          title: Text("Categories", style: TextStyle(color: MyColors.grey_10)),
          leading: IconButton(
            icon: Icon(Icons.menu, color: MyColors.grey_10),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.shopping_cart, color: MyColors.grey_10),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.more_vert, color: MyColors.grey_10),
              onPressed: () {},
            ),// overflow menu
          ]
      ),
      body: ListCategoryImageAdapter(items, onItemClick).getView(),
    );
  }
}

