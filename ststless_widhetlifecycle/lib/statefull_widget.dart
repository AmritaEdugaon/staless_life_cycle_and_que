import 'package:flutter/material.dart';

class SimpleFrom extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _SimpleFromState();
  }
}

class _SimpleFromState extends State<SimpleFrom> {
String name ="";
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        appBar: AppBar(title: Text("Simple form"),),
        body: Container(
          child: Column(
            children:<Widget> [
              TextField(
                onSubmitted: (String userName) {
                  name = userName;
                },
              )

            ],
          ),
        ),
      );
  }

}
