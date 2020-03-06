import 'package:flutter/material.dart';

void main(){
  runApp(new MaterialApp(
    home: MyButton(),
  ));
}

class MyButton extends StatefulWidget {
  @override
  _MyButtonState createState() =>_MyButtonState();// create state se encarga de manejar el estado de nuestro widget
}

class _MyButtonState extends State<MyButton>{

  String vartexto = "hola";
  int index = 0;
  List<String> coleccion = ["fluter","es","genial"];

  void onPressButton(){
    setState(() {//actualiza el estado de widget y lo renderiza
      vartexto = coleccion[index];
      index = index <2 ? index+1 : 0 ;
    });
  }


  @override
  Widget build(BuildContext context) {//encargado de escribir los widget
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('mi barra'),
        backgroundColor: Colors.orangeAccent,
        ),
        
        body: new Container(
          child: new Center(
            child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              
              new Text(vartexto, style: new TextStyle(fontSize: 40.0),),
              new Padding(padding: new EdgeInsets.all(10.0)),
              new RaisedButton(
                child: new Text("Actualizar", style: new TextStyle(color: Colors.white),),
                color: Colors.blueAccent,
                onPressed: onPressButton,
                )
            ],
          ),
          ),
        ),
    );
  }

}