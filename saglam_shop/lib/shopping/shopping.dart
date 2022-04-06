import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Shopping extends StatefulWidget {
  @override
  State<Shopping> createState() => _ShoppingState();
}

class _ShoppingState extends State<Shopping> {
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
        ],
      ),
    );
  }
   var mypro=[{
    "pro_id ":"1",
    "pro_name ":"laptop",
    "pro_price":"1500",
    "pro_image ":"images/category/cat3.png",
    "pro_gty ":"3",
   },
  {
    "pro_id ":"1",
    "pro_name ":"laptop",
    "pro_price":"1500",
    "pro_image ":"images/category/cat3.png",
    "pro_gty ":"3",
  },
  {
    "pro_id ":"1",
    "pro_name ":"laptop",
    "pro_price":"1500",
    "pro_image ":"images/category/cat3.png",
    "pro_gty ":"3",
  },

   ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(35),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start, children: []),
          )
        ],
      ),
      bottomNavigationBar: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
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

class SingleProduct extends StatelessWidget {
  final String pro_id;
  final String pro_name;
  final String pro_price;
  final String pro_gty;
  final String pro_image;

  SingleProduct(
      {this.pro_id,
      this.pro_name,
      this.pro_price,
      this.pro_gty,
      this.pro_image});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        title: Text(
          pro_name,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(pro_price),
        leading: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(pro_image),
              fit: BoxFit.cover,

            ),
            shape: BoxShape.circle
          ),
        ),
        trailing: Row(
          children: [
            GestureDetector(
              child: Container(
                child: FaIcon(FontAwesomeIcons.plus,color: Colors.white,),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
            ),
            new Text(pro_gty),
            GestureDetector(
              child: Container(
                child: FaIcon(FontAwesomeIcons.minus,color: Colors.white,),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
