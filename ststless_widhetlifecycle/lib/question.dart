import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {

  const MyApp({super.key});
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyNewSreen(),
    );
  }
}
class MyNewSreen extends StatefulWidget {
  const MyNewSreen({super.key});

  @override
  State<MyNewSreen> createState() => _MyNewSreenState();
}

class _MyNewSreenState extends State<MyNewSreen> {
  Future<List<String>> getData() async{
    await Future.delayed(Duration(seconds: 2));
    return ["Hena","Nagma","Priya","Amrita"];
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: const Text('User Name'),
      ),
      body: Column(
        children: [
          FutureBuilder<List<String>>(
              future: getData(),
              builder: (context, snapshot){
                if(snapshot.hasError){
                return Center(child: Text("Error:${snapshot.error}"),);
                }
                if(snapshot.connectionState==ConnectionState.waiting){
                  return Center(child: CircularProgressIndicator(),);
                }
                List<String> names = snapshot.data!;
                return ListView.builder(itemCount: names.length, 
                    itemBuilder: (context, index) {
                      String item = names[index];
                       String frist = item[0].toUpperCase();
                       
                       return ListTile(
                         leading: CircleAvatar(
                           child: Text(frist),
                           backgroundColor: Colors.red,
                         ),title: Text(names[index]),
                       );
                    },);
                    
              },)
        ],
      ),
    ));
  }

getData() {
}
  