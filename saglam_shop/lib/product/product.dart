import 'package:flutter/material.dart';
import 'package:saglam_shop/product/productdetail.dart';

class product extends StatefulWidget {

  @override
  State<product> createState() => _productState();
}

class _productState extends State<product> {
  var myarr_product = [

    {
      "pro_id": "1",
      "pro_name": "product1",
      "pro_desc": "productproductproduct1",
      "pro_image": "images/product/1.png",
       "pro_offer":"1"
    },
    {
      "pro_id": "2",
      "pro_name": "product2",
      "pro_desc": "productproductproduct1",
      "pro_image": "images/product/2.png",
      "pro_offer": "1"
    },
    {
      "pro_id": "3",
      "pro_name": "product3",
      "pro_desc": "productproductproduct1",
      "pro_image": "images/product/3.png",
      "pro_offer": "0"
    },
    {
      "pro_id": "4",
      "pro_name": "product4",
      "pro_desc": "productproductproduct1",
      "pro_image": "images/product/4.png",
      "pro_offer": "1"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Scaffold(
        body: Container(
          child: ListView.builder(
            itemCount: myarr_product.length,
            itemBuilder: (BuildContext context,int index){
              return SingleProduct(
                  pro_desc:myarr_product[index]["pro_desc"],
                  pro_name:myarr_product[index]["pro_name"],
                  pro_image:myarr_product[index]["pro_image"],
                  pro_id:myarr_product[index]["pro_id"],
                  pro_offer:myarr_product[index]["pro_offer"],

              );
            },
          ),
        ),
      )
    );
  }
}


class SingleProduct extends StatelessWidget {
  final String pro_id;
  final String pro_name;
  final String pro_desc;
  final String pro_image;
  final String pro_offer;

  SingleProduct(
      {this.pro_id, this.pro_name, this.pro_desc, this.pro_image, this.pro_offer});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ProductDetail()));
      },
      child: new Container(),
    );
  }
}