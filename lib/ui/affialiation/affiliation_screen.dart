import 'dart:io';

import 'package:flutter/material.dart';
import 'package:sinta_app/utils/wavy_header.dart';
import 'package:dio/dio.dart';


import 'bottom_sheet_affiliation_detail.dart';

class Affiliation extends StatefulWidget {
  @override
  _AffiliationState createState() => _AffiliationState();
}

class _AffiliationState extends State<Affiliation> {
  var author = [
    'satu',
    'dua',
    'tiga',
    'empat',
    'lima',
    'enam',
    'tujuh',
    'delapan',
    'sembilan',
    'sepuluh',
    'sebelas',
    'duabelas'
  ];

  _showModalBottomSheet(context) {
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: Platform.isIOS
                ? MediaQuery.of(context).size.height * 0.4
                : MediaQuery.of(context).size.height * 0.6,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0)),
            ),
            child: AffiliationBottomSheet(),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'pt sans', canvasColor: Colors.transparent),
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: <Widget>[
            WavyHeader(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  // search bar..tapi baru layout doang
                  Padding(
                    padding: const EdgeInsets.only(top: 50.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      child: Card(
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0)),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 12.0, top: 10.0, bottom: 10.0),
                          child: Text(
                            'search',
                            style: TextStyle(color: Color(0xFFA8A8A8)),
                          ),
                        ),
                      ),
                    ),
                  ),

                  // text registered authors
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0, bottom: 8.0),
                    child: Text(
                      'Registered Affiliation',
                      style: TextStyle(
                          color: Color(0xFFA8A8A8),
                          fontWeight: FontWeight.w600),
                    ),
                  ),

                  // jumlah registered authors
                  Text(
                    '1234',
                    style: TextStyle(color: Color(0xFFA8A8A8), fontSize: 25.0),
                  ),

                  // list author
                  Flexible(
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () => _showModalBottomSheet(context),
                          child: Card(
                            elevation: 1.5,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                            child: Row(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    width: 40.0,
                                    height: 40.0,
                                    child: Image.asset('images/avatar4.png'),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        'Nama affiliation',
                                        style:
                                            TextStyle(color: Color(0xFFA8A8A8)),
                                      ),
                                      Text(
                                        author[index],
                                        style:
                                            TextStyle(color: Color(0xFFA8A8A8)),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                      itemCount: author.length,
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
