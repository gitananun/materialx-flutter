import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:materialx_flutter/data/img.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/widget/my_text.dart';

class PlayerMusicAlbumDarkRoute extends StatefulWidget {
  PlayerMusicAlbumDarkRoute();

  @override
  PlayerMusicAlbumDarkRouteState createState() => new PlayerMusicAlbumDarkRouteState();
}

class PlayerMusicAlbumDarkRouteState extends State<PlayerMusicAlbumDarkRoute> {
  double value1 = 0.3;
  void setValue1(double value) => setState(() => value1 = value);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: PreferredSize(preferredSize: Size.fromHeight(0), child: Container(color: Colors.black)),
      body: Stack(
        children: <Widget>[
          Container(
            color: Colors.black,
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(Img.get('image_3.jpg'), fit: BoxFit.cover),
          ),
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            )),
          ),
          Column(
            children: <Widget>[
              AppBar(
                  elevation: 0,
                  backgroundColor: Colors.transparent,
                  centerTitle: true,
                  title: Text("NOW PLAYING", style: MyText.title(context).copyWith(color: Colors.white)),
                  leading: IconButton(
                    icon: Icon(Icons.menu),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  actions: <Widget>[
                    IconButton(
                      icon: Icon(Icons.search),
                      onPressed: () {},
                    ),
                  ]),
              Container(height: 20),
              Image.asset(Img.get('photo_singer_male.jpg'), width: 180, height: 180, fit: BoxFit.cover),
              Container(height: 20),
              Text("Locking Up Your Symptoms",
                  style: MyText.title(context).copyWith(color: Colors.white, fontWeight: FontWeight.w400)),
              Container(height: 5),
              Text("Who He Should Be", style: MyText.subhead(context).copyWith(color: MyColors.grey_40)),
              Spacer(),
              Container(
                color: Colors.black,
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text("0:00", style: TextStyle(fontSize: 14, color: MyColors.grey_60)),
                    IconButton(
                      icon: Icon(Icons.skip_previous, color: MyColors.grey_40),
                      onPressed: () {},
                    ),
                    FloatingActionButton(
                      child: Icon(Icons.play_arrow, color: Colors.white),
                      mini: false,
                      elevation: 2,
                      backgroundColor: Colors.red,
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(Icons.skip_next, color: MyColors.grey_40),
                      onPressed: () {},
                    ),
                    Text("0:25", style: TextStyle(fontSize: 14, color: MyColors.grey_60)),
                  ],
                ),
              ),
              Row(
                children: <Widget>[
                  Container(width: 10),
                  IconButton(
                    icon: Icon(Icons.repeat, color: MyColors.grey_40),
                    onPressed: () {},
                  ),
                  Expanded(
                    child: SliderTheme(
                      data: SliderThemeData(
                          thumbColor: MyColors.accentLight,
                          trackHeight: 4,
                          activeTrackColor: MyColors.accentDark,
                          inactiveTrackColor: Colors.grey[200],
                          thumbShape: RoundSliderThumbShape(
                            enabledThumbRadius: 8,
                          )),
                      child: Slider(value: value1, onChanged: setValue1),
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.shuffle, color: MyColors.grey_40),
                    onPressed: () {},
                  ),
                  Container(width: 10),
                ],
              ),
              Container(height: 20),
            ],
          )
        ],
      ),
    );
  }
}
