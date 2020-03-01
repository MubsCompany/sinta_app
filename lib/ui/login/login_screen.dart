import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sinta_app/utils/wavy_header.dart';
import 'package:http/http.dart' as http;

import '../bottom_nav.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController controllerUsername = TextEditingController();
  TextEditingController controllerPassword = TextEditingController();
  Future<List> _login() async {

    String msg = '';

//    final SharedPreferences prefs = await SharedPreferences.getInstance();
    var url = "http://api.sinta.ristekdikti.go.id/consumer/login";

    http: //api.sinta.ristekdikti.go.id/consumer/login

    final response = await http.post(url, body: {
      "username": controllerUsername.text,
      "password": controllerPassword.text,
    });
    var datauser = json.decode(response.body);

    _incrementCounter() async {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      String counter = (prefs.getString(datauser.toString()) ?? "");

      //print('Pressed $counter times.');
      await prefs.setString('token', counter);
    }

    if (datauser == null) {
      setState(() {
        msg = "Username atau Password salah";
      });
      print("salah");
    } else {
      print(response.body);

      if (controllerUsername.text.isNotEmpty &&
          controllerPassword.text.isNotEmpty) {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (BuildContext context) {
          return BottomNav();
        }));

        _incrementCounter();
      } else {
        print("Gabisa masuk");
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'pt sans'),
      home: Scaffold(
        body: Stack(
          children: <Widget>[
            WavyHeader(),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 55.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[

                  Padding(
                    padding: const EdgeInsets.only(bottom: 96.0),
                    child: Row(
                      children: <Widget>[
                        Container(width: 50.0,child: Image.asset('images/sinta.png')),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text('SINTA', style: TextStyle(color: Color(0xFFA5A5A5), fontWeight: FontWeight.w900),),
                        )
                      ],
                    ),
                  ),

                  Text('Hello There.', style: TextStyle(color: Color(0xFFA5A5A5), fontSize: 40.0, fontWeight: FontWeight.w600),),

                  Padding(
                    padding: const EdgeInsets.only(bottom: 24.0),
                    child: Text('please login to continue.', style: TextStyle(color: Color(0xFFA5A5A5), fontSize: 25.0),),
                  ),

                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 24.0, bottom: 50.0, top: 24.0, right: 24.0),
                      child: Column(
                        children: <Widget>[
                          TextFormField(
                            controller: controllerUsername,
                            decoration: InputDecoration(hintText: 'username'),
                          ),

                          SizedBox(height: 10.0,),

                          TextFormField(
                            controller: controllerPassword,
                            decoration: InputDecoration(hintText: 'password'),
                          ),

                          SizedBox(height: 20.0,),

                          Container(width: MediaQuery.of(context).size.width,
                            child: RaisedButton(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                              onPressed: _login,
                              child: Text('Login', style: TextStyle(letterSpacing: 0.7, fontWeight: FontWeight.w800, color: Color(0xFF34495e)),),
                            ),
                          )

                        ],
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
