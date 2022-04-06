import 'package:flutter/material.dart';
import 'package:saglam_shop/account/forgetPassword.dart';
import 'package:saglam_shop/account/register.dart';
import 'package:saglam_shop/home/home.dart';


class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
            onPressed: () => Navigator.of(context).pop()),
      ),

      body: Container(
        margin: EdgeInsets.all(25.0),
        child: Column(
          children: <Widget>[
            Expanded(
                child: Form(
                  child: ListView(
                    children: <Widget>[

                      Container(

                        margin: EdgeInsets.only(bottom: 35.0),
                        child: Text(
                          " Burdan giriş yap ",
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
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              hintText: "telefon numarası  ",
                              border: InputBorder.none),
                          validator: (String value) {
                            if (value.isEmpty) {
                              return " lütfen telefon numarsaı yazınız ";
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
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: TextFormField(
                                obscureText: true,
                                decoration: InputDecoration(
                                    hintText: "  şifre ",
                                    border: InputBorder.none),
                                validator: (String value) {
                                  if (value.isEmpty || value.length < 6) {
                                    return "  Şifryi yaz ";
                                  }
                                },
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            ForgetPassword()));
                              },
                              child: Text(
                                " untum ? ",
                                style: TextStyle(color: Colors.red),
                              ),
                            )
                          ],
                        ),
                      ),
                      MaterialButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context) => new Home()));
                        },
                        child: Container(
                          padding: EdgeInsets.only(
                              left: 30.0, right: 30.0, top: 5.0, bottom: 7.0),
                          alignment: Alignment.center,
                          width: MediaQuery
                              .of(context)
                              .size
                              .width,
                          child: Text(
                            "Giriş yap ",
                            style: TextStyle(color: Colors.white,
                                fontSize: 20.0),
                          ),
                          margin: EdgeInsets.only(bottom: 10.0, top: 30.0),
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(25.0)),
                        ),
                      ),
                    ],
                  ),
                )),
            Container(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(padding: EdgeInsets.all(15.0)),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Register()));
                    },
                    child: Text("Kayıt ol ",
                        style: TextStyle(color: Colors.red, fontSize: 16.0)),
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
