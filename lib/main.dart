import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(
    new MaterialApp(
      home: miClase(),
    ),
    );
}

class miClase extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(//esquema basico de una aplicacion
      appBar: new AppBar(
        title: new Text('Mi Barra Superior'),
      ),

      body: new Container(
        child: Center(
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            new MyCard(title: new Text("i Love Flutter", style: new TextStyle(color: Colors.grey, fontSize: 30.0),),icon: new Icon(Icons.favorite, size: 40.0, color: Colors.redAccent,) ),
            new MyCard(title: new Text("i Love me"),icon: new Icon(Icons.thumb_up, size: 40.0,color: Colors.blueAccent,) ),
            new MyCard(title: new Text("i Love you"),icon: new Icon(Icons.queue_play_next, size: 40.0,) ),
          ],
        ),
        )
        
      ),
    );
  }

}


class MyCard extends StatelessWidget{

  //recibir propiedades
  final Widget title;
  final Widget icon;

  MyCard({this.title, this.icon});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: const EdgeInsets.only(bottom: 2.0),
      child: new Card(
        child: new Container(
          padding: const EdgeInsets.all(20.0),
        
        child: Column(
          children: <Widget>[
            this.title,
            this.icon,
          ],
        ),
        ),
      ),
    );
  }

}