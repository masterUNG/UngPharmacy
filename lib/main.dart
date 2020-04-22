import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ungpharmacy/scaffold/authen.dart';
import 'package:ungpharmacy/widget/test_popup.dart';


void main() {
  runApp(MyApp());
} //

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
      <DeviceOrientation>[DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
    );
    return MaterialApp(title: 'Somsak Pharma',
      debugShowCheckedModeBanner: false,
      home: TestPopUp(),
    );
  }
}