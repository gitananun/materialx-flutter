import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:materialx_flutter/data/img.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/data/my_strings.dart';
import 'package:materialx_flutter/widget/my_text.dart';

class AboutCompanyRoute extends StatefulWidget {
  AboutCompanyRoute();

  @override
  AboutCompanyRouteState createState() => new AboutCompanyRouteState();
}

class AboutCompanyRouteState extends State<AboutCompanyRoute> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          elevation: 1,
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(Icons.menu, color: MyColors.grey_60),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.more_vert, color: MyColors.grey_60),
              onPressed: () {},
            ), // overflow menu
          ]),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text("Our Team",
                  style: MyText.medium(context).copyWith(color: MyColors.grey_90, fontWeight: FontWeight.w500)),
              Container(height: 15),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage(Img.get('photo_male_2.jpg')),
                        ),
                        Container(height: 8),
                        Text("Adams G",
                            style:
                                MyText.caption(context).copyWith(color: MyColors.grey_90, fontWeight: FontWeight.w600)),
                        Container(height: 4),
                        Text("Executive Officer",
                            style:
                                MyText.caption(context).copyWith(color: MyColors.grey_60, fontWeight: FontWeight.w400)),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage(Img.get('photo_female_2.jpg')),
                        ),
                        Container(height: 8),
                        Text("Betty L",
                            style:
                                MyText.caption(context).copyWith(color: MyColors.grey_90, fontWeight: FontWeight.w600)),
                        Container(height: 4),
                        Text("Marketing",
                            style:
                                MyText.caption(context).copyWith(color: MyColors.grey_60, fontWeight: FontWeight.w400)),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage(Img.get('photo_male_7.jpg')),
                        ),
                        Container(height: 8),
                        Text("Roberts",
                            style:
                                MyText.caption(context).copyWith(color: MyColors.grey_90, fontWeight: FontWeight.w600)),
                        Container(height: 4),
                        Text("Business Analyst",
                            style:
                                MyText.caption(context).copyWith(color: MyColors.grey_60, fontWeight: FontWeight.w400)),
                      ],
                    ),
                  )
                ],
              ),
              Container(height: 15),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage(Img.get('photo_male_3.jpg')),
                        ),
                        Container(height: 8),
                        Text("Miller W",
                            style:
                                MyText.caption(context).copyWith(color: MyColors.grey_90, fontWeight: FontWeight.w600)),
                        Container(height: 4),
                        Text("UX Designer",
                            style:
                                MyText.caption(context).copyWith(color: MyColors.grey_60, fontWeight: FontWeight.w400)),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage(Img.get('photo_male_5.jpg')),
                        ),
                        Container(height: 8),
                        Text("Kevin John",
                            style:
                                MyText.caption(context).copyWith(color: MyColors.grey_90, fontWeight: FontWeight.w600)),
                        Container(height: 4),
                        Text("Web Developer",
                            style:
                                MyText.caption(context).copyWith(color: MyColors.grey_60, fontWeight: FontWeight.w400)),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage(Img.get('photo_female_1.jpg')),
                        ),
                        Container(height: 8),
                        Text("Laura M",
                            style:
                                MyText.caption(context).copyWith(color: MyColors.grey_90, fontWeight: FontWeight.w600)),
                        Container(height: 4),
                        Text("Mobile Dev",
                            style:
                                MyText.caption(context).copyWith(color: MyColors.grey_60, fontWeight: FontWeight.w400)),
                      ],
                    ),
                  )
                ],
              ),
              Container(height: 25),
              Text("Mission",
                  style: MyText.medium(context).copyWith(color: MyColors.grey_90, fontWeight: FontWeight.w500)),
              Container(height: 15),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text(MyStrings.long_lorem_ipsum,
                    textAlign: TextAlign.justify,
                    style: MyText.body2(context).copyWith(
                      color: MyColors.grey_60,
                      fontWeight: FontWeight.w300,
                    )),
              ),
              Container(height: 25),
              Text("Address",
                  style: MyText.medium(context).copyWith(color: MyColors.grey_90, fontWeight: FontWeight.w500)),
              Container(height: 15),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Image.asset(Img.get('image_maps.jpg'), height: 150, width: double.infinity, fit: BoxFit.cover),
                    Container(height: 15),
                    Text("3265  Hinkle Deegan Lake Road, Dundee",
                        style: MyText.subhead(context).copyWith(color: MyColors.grey_60)),
                    Text("New York, United State", style: MyText.subhead(context).copyWith(color: MyColors.grey_60)),
                    Text("14837", style: MyText.subhead(context).copyWith(color: MyColors.grey_60)),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
