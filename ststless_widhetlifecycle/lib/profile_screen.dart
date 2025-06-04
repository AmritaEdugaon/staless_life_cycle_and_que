import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  String title = "My Profile";
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Column(
        children: [
          ProfileHeaderComponent(title:title,),
          Container(height: 300,color: Colors.blueGrey,),
          ElevatedButton(onPressed: () {
            title="profile changed";
            setState(() {

            });

          }, child: Text("Refress")),
        ],
      ),
    ));
  }
}
class ProfileHeaderComponent extends StatelessWidget {
  final String title;
  const ProfileHeaderComponent({super.key,required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        gradient: LinearGradient(colors: [Colors.red,Colors.blue,Colors.pink,Colors.yellow,Colors.lightGreenAccent]),
      ),
      child: Row(
        children: [
          IconButton(onPressed: () {


          }, icon: Icon(CupertinoIcons.back)),
          Text(title),
        ],
      ),
    );
  }
}
