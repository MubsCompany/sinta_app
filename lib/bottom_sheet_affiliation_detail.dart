import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AffiliationBottomSheet extends StatefulWidget {
  @override
  _AffiliationBottomSheetState createState() => _AffiliationBottomSheetState();
}

class _AffiliationBottomSheetState extends State<AffiliationBottomSheet> {
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
                          Text('Affiliation name',
                            style: TextStyle(
                                color: Color(0xFF6aa3f9),
                                fontWeight: FontWeight.w600,
                                fontSize: 20.0
                            ),
                          ),

                          // text nama lembaga
                          Text('rank',
                            style: TextStyle(color: Color(0xFFA8A8A8)),),

                        ],
                      ),

                    ],
                  ),
                ),

                // text scopus perprodi
                Container(child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[

                      Text('Scopus perprodi',
                        style: TextStyle(fontWeight: FontWeight.w700),),

                      // anak2 text rank
                      Padding(
                        padding: const EdgeInsets.only(top: 6.0),
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[

                            // rank national
                            Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[

                                Text('Jenjang',
                                  style: TextStyle(color: Color(0xFFA8A8A8),
                                      fontWeight: FontWeight.w600),),

                                Text('10',
                                  style: TextStyle(fontWeight: FontWeight.w600),),

                              ],
                            ),

                            // rank affiliation
                            Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[

                                Text('Nama',
                                  style: TextStyle(color: Color(0xFFA8A8A8),
                                      fontWeight: FontWeight.w600),),

                                Text('Manajemen',
                                  style: TextStyle(fontWeight: FontWeight.w600),),

                              ],
                            ),

                          ],),
                      ),


                      Padding(
                        padding: const EdgeInsets.only(top: 6.0),
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[

                            Text('Jumlah',
                              style: TextStyle(color: Color(0xFFA8A8A8),
                                  fontWeight: FontWeight.w600),),

                            Text('10',
                              style: TextStyle(fontWeight: FontWeight.w600),),

                          ],
                        ),
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
