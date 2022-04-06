import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:saglam_shop/Utilites/toolsutilites.dart';
import 'package:saglam_shop/account/login.dart';

class Register extends StatefulWidget {
  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back_sharp,
              color: ToolsUtilites.secondColor,
            ),
            onPressed: () => Navigator.of(context).pop()),
      ),
      body: Container(
        margin: EdgeInsets.all(20.0),
        child: Column(
          children: [
            Expanded(
                child: Form(
              child: ListView(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 30.0),
                    child: Text(
                      " Üye ol",
                      style: TextStyle(fontSize: 25.0, color: Colors.red),
                    ),
                  ),


                  Container(
                    margin: EdgeInsets.only(bottom: 10.0),
                    padding: EdgeInsets.only(left: 20.0, right: 20.0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25.0)),
                    child: TextFormField(
                      decoration: InputDecoration(
                          hintText: " adı soyadı ", border: InputBorder.none),
                      validator: (String value) {
                        if (value.isEmpty || value.length < 1) {
                          return " kulancı adı boş bırakma ";
                        }
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 10.0),
                    padding: EdgeInsets.only(left: 20.0, right: 20.0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25.0)),
                    child: TextFormField(
                      decoration: InputDecoration(
                          hintText: "E-posta adresi", border: InputBorder.none),
                      validator: (String value) {
                        if (value.isEmpty ||
                            value.indexOf(".") == -1 ||
                            value.indexOf("@") == -1) {
                          return "  boş bırakma ";
                        }
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 10.0),
                    padding: EdgeInsets.only(left: 20.0, right: 20.0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25.0)),
                    child: TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Şifre", border: InputBorder.none),
                      validator: (String value) {
                        if (value.isEmpty || value.length < 1) {
                          return " kulancı adı boş bırakma ";
                        }
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 10.0),
                    padding: EdgeInsets.only(left: 20.0, right: 20.0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25.0)),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          hintText: "telefon numarası",
                          border: InputBorder.none),
                      validator: (String value) {
                        if (value.isEmpty || value.length < 5) {
                          return " kulancı adı boş bırakma ";
                        }
                      },
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {},
                    child: Container(
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width,
                      child: Text(
                        "kyit ol",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      margin: EdgeInsets.only(bottom: 5.0, top: 25),
                      padding: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(25.0)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    alignment: Alignment.bottomCenter,
                    child: Text("aydınlatma metni"),
                  )
                ],
              ),
            )),
            Container(

              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Login()));
                    },
                    child: Text("Giriş Yap ",style: TextStyle(color: Colors.red,fontSize: 20,fontWeight:FontWeight.bold))

                     )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
