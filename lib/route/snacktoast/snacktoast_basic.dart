import 'package:flutter/material.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/widget/toolbar.dart';
import 'package:toast/toast.dart';

class SnacktoastBasicRoute extends StatefulWidget {

  SnacktoastBasicRoute();

  @override
  SnacktoastBasicRouteState createState() => new SnacktoastBasicRouteState();
}


class SnacktoastBasicRouteState extends State<SnacktoastBasicRoute> {

  BuildContext _scaffoldCtx;

  double value1 = 0.7, value2 = 0.3, value3 = 66, value4 = 25;
  void setValue1(double value) => setState(() => value1 = value);
  void setValue2(double value) => setState(() => value2 = value);
  void setValue3(double value) => setState(() => value3 = value);
  void setValue4(double value) => setState(() => value4 = value);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: CommonAppBar.getPrimarySettingAppbar(context, "Basic"),
      body: Builder(builder: (BuildContext context) {
        _scaffoldCtx = context;
        return Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Toast"),
                  Container(height: 10, width: 0),
                  Container(
                    width: 300,
                    child: FlatButton(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                      child: Text("SIMPLE", style: TextStyle(color: Colors.white)),
                      color: MyColors.accent,
                      onPressed: (){ showSimpleToast(context); },
                    ),
                  ),
                  Container(
                    width: 300,
                    child: FlatButton(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                      child: Text("COLORED PRIMARY", style: TextStyle(color: Colors.white)),
                      color: MyColors.accent,
                      onPressed: (){showColoredPrimaryToast(context);},
                    ),
                  ),
                  Container(
                    width: 300,
                    child: FlatButton(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                      child: Text("COLORED ACCENT", style: TextStyle(color: Colors.white)),
                      color: MyColors.accent,
                      onPressed: (){showColoredAccentToast(context);},
                    ),
                  ),
                  Container(height: 10, width: 0),
                  Container(width: 300, height: 1, color: Colors.grey[300]),
                  Container(height: 10, width: 0),
                  Text("Snackbar"),
                  Container(height: 10, width: 0),
                  Container(
                    width: 300,
                    child: FlatButton(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                      child: Text("SIMPLE", style: TextStyle(color: Colors.white)),
                      color: MyColors.accent,
                      onPressed: (){showSimpleSnackbar(context);},
                    ),
                  ),
                  Container(
                    width: 300,
                    child: FlatButton(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                      child: Text("WITH ACTION", style: TextStyle(color: Colors.white)),
                      color: MyColors.accent,
                      onPressed: (){snackBarWithAction(context);},
                    ),
                  ),
                  Container(
                    width: 300,
                    child: FlatButton(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                      child: Text("WITH ACTION INDEFINITE", style: TextStyle(color: Colors.white)),
                      color: MyColors.accent,
                      onPressed: (){snackBarWithActionIndefinite(context);},
                    ),
                  ),
                ],
              ),
            )
          ],
        );
      }),
    );
  }

  void showSimpleToast(BuildContext context){
    Toast.show("Simple Toast", context);
  }

  void showColoredPrimaryToast(BuildContext context){
    Toast.show("Colored Primary", context, backgroundColor: MyColors.primary);
  }

  void showColoredAccentToast(BuildContext context){
    Toast.show("Colored Primary", context, backgroundColor: MyColors.accent);
  }

  void showSimpleSnackbar(BuildContext context){
    Scaffold.of(_scaffoldCtx).showSnackBar(SnackBar(
      content: Text("Simple Snackbar"),
      duration: Duration(seconds: 1),
    ));
  }

  void snackBarWithAction(BuildContext context){
    Scaffold.of(_scaffoldCtx).showSnackBar(SnackBar(
      content: Text("Snackbar With Action"),
      duration: Duration(seconds: 2),
      action: SnackBarAction(
        label: "UNDO",
        onPressed: (){},
      ),
    ));
  }

  void snackBarWithActionIndefinite(BuildContext context){
    Scaffold.of(_scaffoldCtx).showSnackBar(SnackBar(
      content: Text("Snackbar With Action INDEFINITE"),
      duration: Duration(days: 2),
      action: SnackBarAction(
        label: "UNDO",
        onPressed: (){
          Scaffold.of(_scaffoldCtx).showSnackBar(SnackBar(
            content: Text("UNDO CLICKED!"),
            duration: Duration(seconds: 1),
          ));
        },
      ),
    ));
  }

}

