import 'package:flutter/material.dart';

void main(){
  runApp(new MaterialApp(
    home: MyDialog(),
  ));
}

class MyDialog extends StatefulWidget {

  @override
  _MyDialogState createState() => new _MyDialogState();
 }

  enum DialogAction{yes,no}



class _MyDialogState extends State<MyDialog> {

  String _inputv = "";

  void _alertResult(DialogAction action){
    print("tu accion es $action");
  }

  void _showAlert(String dato){

    AlertDialog dialogo = new AlertDialog(
      title: new Text("este titulo"),
      content: new Text(dato),
      actions: <Widget>[
        new FlatButton(onPressed: (){_alertResult(DialogAction.yes);}, child: new Text("si")),
        new FlatButton(onPressed: (){_alertResult(DialogAction.no);}, child: new Text("no")),
        
      ],

    );
    showDialog(context: context, child: dialogo);
  }

  void _onchange(String dato){
    setState(() {
      _inputv =dato;
    });
  }

  @override
  Widget build(BuildContext context) {
   return new Scaffold(
     appBar: new AppBar(
       title: new Text("Mi Titulo"),
     ),

     body: new Container(
       child: new Center(
         child: new Column(
           children: <Widget>[

             new TextField(
               decoration: new InputDecoration(
                 hintText: "ingrese el texto",
               ),
               onChanged: (String value){_onchange(value); },
             ),
             

            new RaisedButton(
              child: new Text("ver Alerta"),
              onPressed: (){_showAlert(_inputv );}
              ),

           ],
         ),
       ),
     ),
   );
  }


}