import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget{

  MyAppBar({this.title});

  final Widget title;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 76.0,
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(color: Colors.blue[500]),
      child: Row(
        children:<Widget>[
          IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Navigation Menu',
            onPressed: null,
          ),

          Expanded(
            child: title,
          ),
          
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search', 
            onPressed: null,
            ),
        ]
      )
    );
  }
  
}

class MyScaffold extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Material(
      child: Column(

        children: <Widget>[
          MyAppBar(
            title: Text(
              'Example Title', 
              style: Theme.of(context).primaryTextTheme.title,
              ),
          ),

          Expanded(child: Center(
            child: Text('Hola Mundo'),
          ),
          ),
          
        ],
      ),
    );
  }

}

void main(){
  runApp(MaterialApp(
    title: 'My app',
    home: MyScaffold(),
  )
  );
}