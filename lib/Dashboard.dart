import 'dart:io';

import 'package:flutter/material.dart';
import 'package:sinta_app/wavy_header.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: <Widget>[

            WavyHeader(),

            SingleChildScrollView(
              child: Column(
                children: <Widget>[

                  // icon search diatas
                  Padding(
                    padding: EdgeInsets.only(left: 20, top: 48, bottom: 20.0),
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 14.0),
                          child: GestureDetector(
                              onTap: () {
                              },
                              child: Container(
                                  width: 25.0,
                                  height: 25.0,
                                  child: Opacity(
                                    opacity: 0.6,
                                    child: Image.asset('images/search_icon.png'),),
                              )
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: MediaQuery.of(context).size.width / 3.5),
                          child: Container(
                            width: 50,
                            height: 50,
                            child: Image.asset('images/sinta.png'),
                          ),
                        )
                      ],
                    ),
                  ),

                  // card pertama
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height * 0.16,
                      width: double.infinity,
                      child: Card(
                        elevation: 1.5,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25)
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[

                            Padding(
                              padding: const EdgeInsets.only(left: 16.0, top: 16.0),
                              child: Text('Scopus Publication',
                                style: TextStyle(
                                  color: Color(0xFFA8A8A8),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            )

                          ],
                        ),
                      ),
                    ),
                  ) ,

                  // card kedua
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 8.0),
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height * 0.16,
                      width: double.infinity,
                      child: Card(
                        elevation: 1.5,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25)
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[

                            Padding(
                              padding: const EdgeInsets.only(left: 16.0, top: 16.0),
                              child: Text('GScholar Publications',
                                style: TextStyle(
                                  color: Color(0xFFA8A8A8),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            )

                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }

}

Widget _buildWave(BuildContext context) {
  return Opacity(
    opacity: 0.2,
    child: Align(
      alignment: Alignment.topLeft,
      heightFactor: 0.75,
      widthFactor: 0.75,
      child:Image.asset('images/wave_screen.png'),
    ),
  );
}

