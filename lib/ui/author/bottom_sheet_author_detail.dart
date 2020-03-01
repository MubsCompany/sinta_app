import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AuthorBottomSheet extends StatefulWidget {
  @override
  _AuthorBottomSheetState createState() => _AuthorBottomSheetState();
}

class _AuthorBottomSheetState extends State<AuthorBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 4.0),
        child: Stack(
          children: <Widget>[

            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Container(alignment: Alignment.topRight, child: Image.asset('images/texture.png')),
            ),

            Padding(
              padding: EdgeInsets.only(top: 220, right: MediaQuery.of(context).size.width * 0.5),
              child: Container(alignment: Alignment.topRight, child: Image.asset('images/texture.png')),
            ),

            Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[

                GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Divider(thickness: 3,indent: MediaQuery.of(context).size.width * 0.4, endIndent: MediaQuery.of(context).size.width * 0.4, color: Colors.black26,)
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Row(
                    children: <Widget>[

                      // image author
                      Container(
                        width: 100.0,
                        height: 100.0,
                        child: Image.asset('images/avatar4.png'),
                      ),

                      // text samping image
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[

                          // text nama author
                          Text('Nama author',
                            style: TextStyle(
                                color: Color(0xFF6aa3f9),
                                fontWeight: FontWeight.w600,
                                fontSize: 20.0
                            ),
                          ),

                          // text nama lembaga
                          Text('nama lembaga',
                            style: TextStyle(color: Color(0xFFA8A8A8)),),

                          // text nama subject
                          Text('nama subject',
                            style: TextStyle(color: Color(0xFFA8A8A8)),)

                        ],
                      ),

                    ],
                  ),
                ),

                // rank dan sebagainya
                Container(child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[

                      Text('Rank',
                        style: TextStyle(fontWeight: FontWeight.w700),),

                      // anak2 text rank
                      Padding(
                        padding: const EdgeInsets.only(top: 6.0),
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[

                            // rank national
                            Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[

                                Text('National',
                                  style: TextStyle(color: Color(0xFFA8A8A8),
                                      fontWeight: FontWeight.w600),),

                                Text('10',
                                  style: TextStyle(fontWeight: FontWeight.w600),),

                              ],
                            ),

                            // rank affiliation
                            Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[

                                Text('Affiliation',
                                  style: TextStyle(color: Color(0xFFA8A8A8),
                                      fontWeight: FontWeight.w600),),

                                Text('10',
                                  style: TextStyle(fontWeight: FontWeight.w600),),

                              ],
                            ),

                          ],),
                      ),

                      Divider(color: Colors.black54,),

                      Padding(
                        padding: const EdgeInsets.only(top: 24.0),
                        child: Text('Rank 3yr',
                          style: TextStyle(fontWeight: FontWeight.w700),),
                      ),

                      // anak2 text rank 3yr
                      Padding(
                        padding: const EdgeInsets.only(top: 6.0),
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[

                            // rank national
                            Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[

                                Text('National',
                                  style: TextStyle(color: Color(0xFFA8A8A8),
                                      fontWeight: FontWeight.w600),),

                                Text('10',
                                  style: TextStyle(fontWeight: FontWeight.w600),),

                              ],
                            ),

                            // rank affiliation
                            Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[

                                Text('Affiliation',
                                  style: TextStyle(color: Color(0xFFA8A8A8),
                                      fontWeight: FontWeight.w600),),

                                Text('10',
                                  style: TextStyle(fontWeight: FontWeight.w600),),

                              ],
                            ),

                          ],),
                      ),

                      Divider(color: Colors.black54,),

                      Padding(
                        padding: const EdgeInsets.only(top: 24.0),
                        child: Text('Prodi',
                          style: TextStyle(fontWeight: FontWeight.w700),),
                      ),

                      // anak2 text prodi
                      Padding(
                        padding: const EdgeInsets.only(top: 6.0),
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[

                            // nama prodi
                            Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[

                                Text('Nama',
                                  style: TextStyle(color: Color(0xFFA8A8A8),
                                      fontWeight: FontWeight.w600),),

                                Text('Teknik Informatika',
                                  style: TextStyle(fontWeight: FontWeight.w600),),

                              ],
                            ),

                            // jenjang
                            Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[

                                Text('Jenjang',
                                  style: TextStyle(color: Color(0xFFA8A8A8),
                                      fontWeight: FontWeight.w600),),

                                Text('S1',
                                  style: TextStyle(fontWeight: FontWeight.w600),),

                              ],
                            ),

                          ],),
                      ),

                    ],
                  ),
                ))

              ],
            ),

          ],
        ),
      ),
    );
  }
}
