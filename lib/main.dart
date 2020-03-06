import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
   home: MyTextField(),
  ));
}

class MyTextField extends StatefulWidget {
  @override
  _MyTextFieldState createState() => new _MyTextFieldState();
 }

class _MyTextFieldState extends State<MyTextField> {

  String inputv = "";

  final TextEditingController control = new TextEditingController();

  void onSubmitted(String dato){
    setState(() {
      inputv=dato;
      control.text="";
    });
  }

  @override
  Widget build(BuildContext context) {
   return new Scaffold(
     appBar: new AppBar(
       title: new Text("mi titulo"),
       backgroundColor: Colors.redAccent,
     ),

     body: new Container(
       child: Center(
         child: new Column(
           children: <Widget>[

             new TextField(
              decoration: new InputDecoration(hintText: "ingrese el texto"),
              onSubmitted: (String value){
                onSubmitted(value);
              }, 
              controller: control,
             ),
              new Text(inputv),
           ],
         )
       ),
     ),
   );
  }
}