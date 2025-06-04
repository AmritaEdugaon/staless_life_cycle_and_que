import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ststless_widhetlifecycle/profile_screen.dart';
import 'package:ststless_widhetlifecycle/statefull_widget.dart';

import 'my_profile.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SimpleFrom(),
    );
  }
}
