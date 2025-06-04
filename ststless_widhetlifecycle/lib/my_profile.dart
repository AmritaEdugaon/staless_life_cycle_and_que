import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyNewProfile extends StatefulWidget {
  const MyNewProfile({super.key});

  @override
  State<MyNewProfile> createState() => _MyNewProfileState();
}

class _MyNewProfileState extends State<MyNewProfile> {
  String title ="Your Profile";
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Column(
        children: [
          MyProfileController(title:title,),
          Container(height: 400,color: Colors.white,),
          ElevatedButton(onPressed: () {
            title = "New Profile";
            setState(() {

            });
          }, child: Text("Refresh"))
        ],
      ),
    ));
  }
}
class MyProfileController extends StatelessWidget {
  final String title ;
  const MyProfileController({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration
        (borderRadius: BorderRadius.circular(20),
          gradient:LinearGradient(colors:[Colors.red,CupertinoColors.systemBlue,CupertinoColors.activeGreen])),
        child: Row(
          children: [
            IconButton(onPressed: () {

            }, icon: Icon(CupertinoIcons.back)),
            Text("title"),
          ],
        ),
    );

  }
}
