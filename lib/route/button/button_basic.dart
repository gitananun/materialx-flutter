import 'package:flutter/material.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/widget/toolbar.dart';

class ButtonBasicRoute extends StatefulWidget {

  ButtonBasicRoute();

  @override
  ButtonBasicRouteState createState() => new ButtonBasicRouteState();
}


class ButtonBasicRouteState extends State<ButtonBasicRoute> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: CommonAppBar.getPrimaryAppbar(context, "Basic"),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(15),
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Spacer(),
                RaisedButton(
                  child: Text("NORMAL", style: TextStyle(color: Colors.grey[800]),),
                  color: Colors.grey[300],
                  onPressed: (){},
                ),
                Spacer(),
                RaisedButton(
                  child: Text("PRIMARY", style: TextStyle(color: Colors.white),),
                  color: Colors.blue[700],
                  onPressed: (){},
                ),
                Spacer(),
                RaisedButton(
                  child: Text("ACCENT", style: TextStyle(color: Colors.white),),
                  color: Colors.pink,
                  onPressed: (){},
                ),
                Spacer(),
              ],
            ),
            Row(
              children: <Widget>[
                Spacer(),
                FlatButton(
                  child: Text("NORMAL", style: TextStyle(color: Colors.grey[800]),),
                  color: Colors.transparent,
                  onPressed: (){},
                ),
                Spacer(),
                FlatButton(
                  child: Text("PRIMARY", style: TextStyle(color: MyColors.primary),),
                  color: Colors.transparent,
                  onPressed: (){},
                ),
                Spacer(),
                FlatButton(
                  child: Text("ACCENT", style: TextStyle(color: MyColors.accent),),
                  color: Colors.transparent,
                  onPressed: (){},
                ),
                Spacer(),
              ],
            ),
            Row(
              children: <Widget>[
                Spacer(),
                RaisedButton(
                  disabledTextColor: Colors.grey[400],
                  disabledColor: Colors.grey[300],
                  child: Text("NORMAL"),
                  onPressed: null,
                ),
                Spacer(),
                RaisedButton(
                  child: Text("PRIMARY", style: TextStyle(color: MyColors.primary),),
                  color: Colors.white,
                  onPressed: (){},
                ),
                Spacer(),
                RaisedButton(
                  child: Text("ACCENT", style: TextStyle(color: MyColors.accent),),
                  color: Colors.white,
                  onPressed: (){},
                ),
                Spacer(),
              ],
            ),
            Divider(),
            Row(
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.phone_paused),
                  onPressed: (){},
                ),
                Spacer(),
                IconButton(
                  icon: Icon(Icons.people, color: MyColors.primary,),
                  onPressed: (){},
                ),
                Spacer(),
                IconButton(
                  icon: Icon(Icons.mic, color: MyColors.accent,),
                  onPressed: (){},
                ),
              ],
            ),
            Divider(),
            Row(
              children: <Widget>[
                FloatingActionButton(
                  heroTag: "fab1",
                  backgroundColor: Colors.white,
                  elevation: 3,
                  child: Icon(Icons.mic, color: Colors.black87,),
                  onPressed: () { print('Clicked'); },
                ),
                Spacer(),
                FloatingActionButton(
                  heroTag: "fab2",
                  backgroundColor: MyColors.primary,
                  elevation: 3,
                  child: Icon(Icons.add, color: Colors.white,),
                  onPressed: () { print('Clicked'); },
                ),
                Spacer(),
                FloatingActionButton(
                  heroTag: "fab3",
                  backgroundColor: MyColors.accent,
                  elevation: 3,
                  child: Icon(Icons.create, color: Colors.white,),
                  onPressed: () { print('Clicked'); },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

