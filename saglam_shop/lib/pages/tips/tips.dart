import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:page_indicator/page_indicator.dart';
import 'package:saglam_shop/account/login.dart';
import 'package:saglam_shop/account/register.dart';


class Tips extends StatefulWidget {
  @override
  _TipsState createState() => _TipsState();
}

class _TipsState extends State<Tips> {
  var myarr = [
    {
      "title": "1",
      "info": "metin 1",
      "image": "images/tip0.png"
    },
    {
      "title": "2",
      "info": "metin 2",
      "image": "images/tip0.png"
    },
    {
      "title": "3",
      "info": "metin 3",
      "image": "images/tip0.png"
    }
  ];
  @override
  Widget build(BuildContext context) {
    double myheight = MediaQuery.of(context).size.height / 6;
    return Scaffold(
      body: new Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                new Container(
                  alignment: Alignment.bottomRight,
                  padding: EdgeInsets.only(top: 35.0, right: 25.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context, MaterialPageRoute(builder: (context) => Login()));
                    },
                    child: Text(
                      "Giriş Yap",
                      style: TextStyle(fontSize: 22.0, color: Colors.red,fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                new Container(
                  height: myheight * 4,
                  child: new PageIndicatorContainer(
                    shape: IndicatorShape.circle(),
                    length: myarr.length,
                    align: IndicatorAlign.bottom,
                    indicatorColor: Colors.white,
                    indicatorSelectorColor: Colors.red,
                    child: PageView.builder(
                        physics: AlwaysScrollableScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemCount: myarr.length,
                        itemBuilder: (BuildContext context, i) {
                          return SingleTips(
                              title: myarr[i]["title"],
                              info: myarr[i]["info"],
                              image: myarr[i]["image"]);
                        }),
                  ),
                ),
                Expanded(
                  child: new Container(
                    padding: EdgeInsets.all(10.0),
                    child: ListView(
                      children: <Widget>[
                        Column(
                          textDirection: TextDirection.rtl,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            MaterialButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Register()));
                              },
                              child: Container(
                                alignment: Alignment.center,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.0),
                                  color: Colors.red,
                                ),
                                child: Container(
                                    padding: EdgeInsets.only(
                                        left: 30.0, right: 30.0, top: 5.0, bottom: 5.0),
                                    decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius: BorderRadius.circular(20.0)),
                                    child: Text(
                                      "Üye ol",
                                      style: TextStyle(fontSize: 22.0,color: Colors.white),
                                    )),
                              ),
                            ),
                            MaterialButton(
                              onPressed: () {},
                              child: Container(
                                alignment: Alignment.center,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.0),
                                  color: Colors.red,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    FaIcon(
                                      FontAwesomeIcons.facebook,
                                      size: 20.0,
                                      color: Colors.white,
                                    ),
                                    Container(
                                        padding: EdgeInsets.only(
                                            left: 30.0, right: 30.0, top: 5.0, bottom: 5.0),
                                        decoration: BoxDecoration(
                                            color: Colors.red,
                                            borderRadius: BorderRadius.circular(20.0)),
                                        child: Text(
                                          "facebook ile giriş yap",
                                          style: TextStyle(fontSize: 22.0,color: Colors.white),
                                        )),
                                  ],
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}

class SingleTips extends StatelessWidget {
  final String title;
  final String info;
  final String image;

  SingleTips({this.title, this.info, this.image});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
            child: Container(
              alignment: Alignment.center,
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
            )),
        new Padding(
            padding: EdgeInsets.all(5),
            child: Text(
              title,
              style: TextStyle(
                  color: Colors.red,
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold),
            )),
        new Padding(
            padding: EdgeInsets.only(bottom: 70.0),
            child: Text(
              info,
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold),
            ))
      ],
    );
  }
}