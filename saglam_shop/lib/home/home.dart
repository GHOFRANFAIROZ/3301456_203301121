import 'package:flutter/material.dart';
import 'package:saglam_shop/drawer/mydrawer.dart';
import 'package:saglam_shop/product/productdetail.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  GlobalKey<ScaffoldState> _KeyDrawer = GlobalKey<ScaffoldState>();
  var myarr_product = [
    {
      "pro_id": "1",
      "pro_name": "product1",
      "pro_desc": "productproductproduct1",
      "pro_image": "images/product/1.png"
    },
    {
      "pro_id": "2",
      "pro_name": "product2",
      "pro_desc": "productproductproduct1",
      "pro_image": "images/product/2.png"
    },
    {
      "pro_id": "3",
      "pro_name": "product3",
      "pro_desc": "productproductproduct1",
      "pro_image": "images/product/3.png"
    },
    {
      "pro_id": "4",
      "pro_name": "product4",
      "pro_desc": "productproductproduct1",
      "pro_image": "images/product/4.png"
    },
  ];
  var myarr_category = [
    {
      "cat_id": "1",
      "cat_name": "cat1",
      "cat_image": "images/category/cat1.png"
    },
    {
      "cat_id": "2",
      "cat_name": "cat2",
      "cat_image": "images/category/cat2.png"
    },
    {
      "cat_id": "3",
      "cat_name": "cat3",
      "cat_image": "images/category/cat3.png"
    },
    {
      "cat_id": "3",
      "cat_name": "cat3",
      "cat_image": "images/category/cat3.png"
    },
    {
      "cat_id": "5",
      "cat_name": "cat5",
      "cat_image": "images/category/cat5.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
          key: _KeyDrawer,
          endDrawer: MyDrawer(),
          body: Directionality(
              textDirection: TextDirection.ltr,
              child: Column(children: [
                Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(top: 30),
                  padding: EdgeInsets.only(left: 15),
                  child: Text(
                    "konunuz",
                    style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 15),
                      child: Text(
                        "Adreslerim",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.arrow_drop_down,
                        color: Colors.red,
                      ),
                      onPressed: () {},
                    )
                  ],
                ),
                new Container(
                  padding: EdgeInsets.all(15),
                  child: Row(
                    children: [
                      GestureDetector(
                          onTap: () {
                            _KeyDrawer.currentState.openEndDrawer();
                          },
                          child: new Icon(
                            Icons.menu,
                            size: 42,
                          )),
                      Expanded(
                          child: new Container(
                            padding: EdgeInsets.only(left: 10, right: 10),
                            decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(25.0)),
                            child: new TextFormField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: " ",
                                  suffixIcon: Icon(Icons.search)),
                            ),
                          )),
                    ],
                  ),
                ),
                new Container(
                  width: MediaQuery.of(context).size.width,
                  height: 110,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: myarr_category.length,
                      itemBuilder: (BuildContext context, int index) {
                        return SingleCategory(
                          cat_id: myarr_category[index]["cat_id"],
                          cat_image: myarr_category[index]["cat_image"],
                          cat_name: myarr_category[index]["cat_name"],
                        );
                      }),
                ),
                new Container(
                  width: MediaQuery.of(context).size.width,
                  height: 300,
                  child: ListView.builder(
                      itemCount: myarr_product.length,
                      itemBuilder: (BuildContext context, int index) {
                        return SingleProduct(
                          pro_id: myarr_product[index]["pro_id"],
                          pro_image: myarr_product[index]["pro_image"],
                          pro_name: myarr_product[index]["pro_name"],
                          pro_desc: myarr_product[index]["pro_desc"],
                        );
                      }),
                ),
              ])),
        ));
  }
}

class SingleProduct extends StatelessWidget {
  final String pro_id;
  final String pro_name;
  final String pro_desc;
  final String pro_image;

  SingleProduct({this.pro_id, this.pro_name, this.pro_desc, this.pro_image});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ProductDetail()));
      },
      child: new Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            new Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 4,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  image: DecorationImage(
                      fit: BoxFit.cover, image: AssetImage(pro_image))),
            ),
            SizedBox(
              height: 10,
            ),
            new Text(
              pro_name,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            new Text(
              pro_desc,
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}

class SingleCategory extends StatelessWidget {
  final String cat_id;
  final String cat_name;
  final String cat_image;

  SingleCategory({this.cat_id, this.cat_name, this.cat_image});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 10.0),
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(5.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.5),
                color: Colors.white70),
            child: Image.asset(cat_image),
          ),
          Text(
            cat_name,
            style: TextStyle(fontSize: 17),
          ),
        ],
      ),
    );
  }
}