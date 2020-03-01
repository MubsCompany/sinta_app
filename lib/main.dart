import 'package:flutter/material.dart';
import 'package:sinta_app/search_bar.dart';
import 'package:sinta_app/splash_screen.dart';

import 'Dashboard.dart';
import 'affiliation.dart';
import 'package:sinta_app/author.dart';
import 'bottom_nav.dart';
import 'bottom_sheet_author_detail.dart';
import 'login_ui.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}


