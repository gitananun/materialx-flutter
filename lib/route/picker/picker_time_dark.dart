import 'package:flutter/material.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/widget/toolbar.dart';

import 'package:materialx_flutter/widget/my_text.dart';

class PickerTimeDarkRoute extends StatefulWidget {
  PickerTimeDarkRoute();

  @override
  PickerTimeDarkRouteState createState() => new PickerTimeDarkRouteState();
}

class PickerTimeDarkRouteState extends State<PickerTimeDarkRoute> {
  Future<TimeOfDay> selectedTime;
  String time = "-";

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: CommonAppBar.getPrimarySettingAppbar(context, "Time Dark"),
      body: Stack(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            width: double.infinity,
            height: 45,
            color: Colors.grey[300],
            child: Text(
              time,
              style: MyText.title(context),
            ),
          ),
          Align(
            child: FlatButton(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              child: Text("PICK TIME", style: TextStyle(color: Colors.white)),
              padding: EdgeInsets.symmetric(horizontal: 30),
              color: MyColors.accent,
              onPressed: () {
                showDialogPicker(context);
              },
            ),
            alignment: Alignment.center,
          ),
        ],
      ),
    );
  }

  void showDialogPicker(BuildContext context) {
    selectedTime = showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
      builder: (BuildContext context, Widget child) {
        return Theme(
          data: ThemeData.dark(),
          child: child,
        );
      },
    );
    selectedTime.then((value) {
      setState(() {
        if (value == null) return;
        time = value.hour.toString() + " : " + value.minute.toString();
      });
    }, onError: (error) {
      print(error);
    });
  }
}
