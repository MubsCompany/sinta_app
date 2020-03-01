import 'package:flutter/material.dart';
import 'package:sinta_app/ui/author/author_screen.dart';
import 'package:sinta_app/utils/SpinkitChasingDots.dart';
import 'package:sinta_app/utils/loader.dart';
import 'package:sinta_app/utils/wavy_header.dart';
import 'dart:async';

class SplashScreenPage extends StatefulWidget {
  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  startSplashScreen() async {
    var duration = Duration(seconds: 3);
    return Timer(duration, () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(
              builder: (context) => Author()
          )
      );
    });
  }

  @override
  void initState() {
    startSplashScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'montserrat'
      ),
      home: Scaffold(
          backgroundColor: Colors.white,
          body: Stack(
            children: <Widget>[

              WavyHeader(),

              Padding(
                padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.3, top: MediaQuery.of(context).size.height * 0.2),
                child: Image.asset('images/sinta.png'),
              ),

              Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      Text('SINTA',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 38,
                              color: Color(0xFFA8A8A8))),

                      Text('Science and Technology Index',
                      style: TextStyle(
                          color: Color(0xFFA8A8A8)
                      ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: ColorLoader(),
                      ),

                    ],
                  )),
            ],
          )),
    );
  }
}

Widget _spinLoading() {
  return Container(
    padding: EdgeInsets.fromLTRB(24, 80, 24, 16),
    child: Column(
      children: <Widget>[
        Center(
          child: Container(
            child: SpinKitChasingDots(
              color: Colors.lightBlueAccent,
            ),
          ),
        )
      ],
    ),
  );
}

