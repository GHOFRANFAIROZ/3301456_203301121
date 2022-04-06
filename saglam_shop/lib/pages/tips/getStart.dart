import 'package:flutter/material.dart';
import 'package:saglam_shop/Utilites/toolsutilites.dart';
import 'package:saglam_shop/pages/tips/tips.dart';


class GetStart extends StatefulWidget {
  @override
  _GetStartState createState() => _GetStartState();
}

class _GetStartState extends State<GetStart> {
  @override
  Widget build(BuildContext context) {
    double myheight = MediaQuery.of(context).size.height / 3;
    return Scaffold(
      body: new Container(
          child: Column(
            children: <Widget>[
              new Container(
                height: myheight * 2,
                decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                        image: AssetImage("images/tip0.png"), fit: BoxFit.contain)),
              ),
              new Container(
                height: myheight,
                padding: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                    color: ToolsUtilites.PrimeryColor,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3))
                    ],
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: ListView(
                  children: <Widget>[
                    Column(
                      textDirection: TextDirection.ltr,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Teknoloji Dünyası",
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10,),
                        Text(
                            "En büyük indirimler ",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                            )),
                        SizedBox(height: 10,),
                        Text(
                            " aradığınyüz binlerce indirimli ürün en uygun fiyatlar" ,
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                            )),
                        Padding(
                          padding: EdgeInsets.only(top: 20.0),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                    return Tips();
                                  }));
                            },
                            child: Container(
                                padding: EdgeInsets.only(
                                    left: 30.0, right: 30.0, top: 5.0, bottom: 5.0),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20.0)),
                                child: Text(
                                  "Başla",
                                  style: TextStyle(fontSize: 25.0),
                                )),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}