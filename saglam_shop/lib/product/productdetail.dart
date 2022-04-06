import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:saglam_shop/shopping/shopping.dart';

class ProductDetail extends StatefulWidget {
  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  Widget HeaderBuild() {
    return Container(
      padding: EdgeInsets.all(15.5),
      child: Row(
        children: [
          Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey[100],
                        spreadRadius: 1,
                        blurRadius: 1,
                        offset: Offset(0, 1))
                  ],
                  borderRadius: BorderRadius.circular(15)),
              child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.red,
                  ))),
          Expanded(child: Text(" ")),
          Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey[100],
                        spreadRadius: 1,
                        blurRadius: 1,
                        offset: Offset(0, 1))
                  ],
                  borderRadius: BorderRadius.circular(15)),
              child: IconButton(
                  icon: Icon(
                    Icons.shopping_cart,
                    color: Colors.red,
                  ),

                  onPressed: () {Navigator.push(context,
                      MaterialPageRoute(builder: (context) => new Shopping()));
                  })),
        ],
      ),
    );
  }

  Widget imageProduct() {
    return Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.red,
                  spreadRadius: 1,
                  blurRadius: 0,
                  offset: Offset(0, 1))
            ],
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50.0),
              bottomRight: Radius.circular(50.0),
            )),
        child: Column(children: [
          Image.asset("images/product/3.png"),
          Padding(padding: EdgeInsets.only(top: 30.0)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  decoration: BoxDecoration(
                      color: Colors.red,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey[100],
                            spreadRadius: 1,
                            blurRadius: 1,
                            offset: Offset(0, 1))
                      ],
                      borderRadius: BorderRadius.circular(15)),
                  child: IconButton(
                      onPressed: () {},
                      icon: FaIcon(
                        FontAwesomeIcons.minus,
                        color: Colors.white,
                      ))),
              Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Text(
                    " 1 ",
                    style: TextStyle(color: Colors.black87, fontSize: 25),
                  )),
              Container(
                  decoration: BoxDecoration(
                      color: Colors.red,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey[100],
                            spreadRadius: 1,
                            blurRadius: 1,
                            offset: Offset(0, 1))
                      ],
                      borderRadius: BorderRadius.circular(15)),
                  child: IconButton(
                      onPressed: () {},
                      icon: FaIcon(
                        FontAwesomeIcons.plus,
                        color: Colors.white,
                      )))
            ],
          )
        ]));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          HeaderBuild(),
          imageProduct(),
          Container(
            padding: EdgeInsets.all(35),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                new Text(
                  "Marka",
                  style: TextStyle(fontSize: 25),
                ),
                Padding(padding: EdgeInsets.only(bottom: 15.0)),
                new Row(
                  children: [
                    new Icon(
                      Icons.favorite,
                      color: Colors.red,
                    ),
                    new Text("7"),
                    Expanded(child: Text("")),
                    new Icon(
                      Icons.star,
                      color: Colors.amberAccent,
                    ),
                    new Text("4.5"),
                  ],
                ),
                new Text(
                  " paragraphs consist of three parts: the topic sentence,paragraphs consist of three parts: the topic sentence body sentences, and the concluding o",
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                )
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: <Widget>[
              new Text(
                " 5000TL ",
                style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              Expanded(child: Text("")),
              Container(
                decoration: BoxDecoration(
                    color: Colors.red,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.white,
                          spreadRadius: 1,
                          blurRadius: 1,
                          offset: Offset(0, 1))
                    ],
                    borderRadius: BorderRadius.circular(40)),
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(10),
                child: Text(
                  "Sepata Ekle ",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.white),
                ),
              ),
              Container(
                child: IconButton(
                  icon: Icon(
                    Icons.shopping_cart,
                    color: Colors.red,
                  ),
                ),
              ),
            ],
          ),
        ),
        padding: EdgeInsets.only(left: 50, right: 30),
        height: 65.0,
        decoration: BoxDecoration(
            color: Colors.red[300],
            boxShadow: [
              BoxShadow(
                  color: Colors.red,
                  spreadRadius: 0,
                  blurRadius: 0,
                  offset: Offset(0, 3))
            ],
            borderRadius: BorderRadius.circular(50)),
      ),
    );
  }
}