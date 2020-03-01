import 'dart:io';

import 'package:flutter/material.dart';
import 'package:sinta_app/sources/api_service.dart';
import 'package:sinta_app/wavy_header.dart';

import 'bottom_sheet_author_detail.dart';
import 'model/authors.dart';

class Author extends StatefulWidget {
  @override
  _AuthorState createState() => _AuthorState();
}

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

List<String> _searchListItems;
bool _isSearch = true;
String _searchText = "";
var _searchEdit = new TextEditingController();

class _AuthorState extends State<Author> {
  _AuthorState() {
    _searchEdit.addListener(() {
      if (_searchEdit.text.isEmpty) {
        setState(() {
          _isSearch = true;
          _searchText = "";
        });
      } else {
        setState(() {
          _isSearch = false;
          _searchText = _searchEdit.text;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(canvasColor: Colors.transparent, fontFamily: 'pt sans'),
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: <Widget>[
            WavyHeader(),
            FutureBuilder(
              future: AppRepository().getListAuthor(10, 1, 1),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.data == null) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                } else {
                  return AuthorList(authors: snapshot.data,);
                }
              },
            ),
          ],
        ),
      ),
    );
  }


}

Widget _searchBox() {
  return new Container(
    child: TextField(
      cursorColor: Colors.blue[300],
      controller: _searchEdit,
      decoration: InputDecoration(
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
        ),
        hintText: "Search",
        hintStyle: new TextStyle(color: Colors.grey[300]),
      ),
      textAlign: TextAlign.left,
    ),
  );
}

Widget _searchListView() {
  _searchListItems = new List<String>();
  for (int i = 0; i < author.length; i++) {
    var item = author[i];

    if (item.toLowerCase().contains(_searchText.toLowerCase())) {
      _searchListItems.add(item);
    }
  }
  return _searchAddList();
}

Widget _searchAddList() {
  return new Flexible(
    child: new ListView.builder(
        itemCount: _searchListItems.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Nama author',
                        style: TextStyle(color: Color(0xFFA8A8A8)),
                      ),
                      Text(
                        "${_searchListItems[index]}",
                        style: TextStyle(color: Color(0xFFA8A8A8)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        }),
  );
}

Widget mListView() {
  _showModalBottomSheet(context) {
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: Platform.isIOS
                ? MediaQuery.of(context).size.height * 0.6
                : MediaQuery.of(context).size.height * 0.6,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0)),
            ),
            child: AuthorBottomSheet(),
          );
        });
  }

  return Flexible(
    child: ListView.builder(
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () => _showModalBottomSheet(context),
          child: Card(
            elevation: 1.5,
            color: Colors.white,
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Nama author',
                        style: TextStyle(color: Color(0xFFA8A8A8)),
                      ),
                      Text(
                        author[index],
                        style: TextStyle(color: Color(0xFFA8A8A8)),
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
  );
}

class AuthorList extends StatefulWidget {
  final Authors authors;

  const AuthorList({this.authors, Key key}) : super(key: key);

  @override
  _AuthorListState createState() => _AuthorListState();
}

class _AuthorListState extends State<AuthorList> {
  List<Authors> authorModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // search bar
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
                      left: 16.0, bottom: 10.0, right: 16.0),
                  child: _searchBox(),
                ),
              ),
            ),
          ),

          // text registered authors
          Padding(
            padding: const EdgeInsets.only(top: 16.0, bottom: 8.0),
            child: Text(
              'Registered Authors',
              style: TextStyle(
                  color: Color(0xFFA8A8A8), fontWeight: FontWeight.w600),
            ),
          ),

          // jumlah registered authors
          Text(
            '1234',
            style: TextStyle(color: Color(0xFFA8A8A8), fontSize: 25.0),
          ),

          // list author
          _isSearch ? mListView() : _searchListView()
        ],
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    authorModel = widget.authors;

  }
}


Widget badan(BuildContext context) {}
