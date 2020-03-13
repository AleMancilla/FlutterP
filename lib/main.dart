import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
   home: MyStepper(),
  ));
}

class MyStepper extends StatefulWidget {
  @override
  _MyStepperState createState() => new _MyStepperState();
 }
class _MyStepperState extends State<MyStepper> {

  int _paso =0;
  List<Step> myStep = [
    new Step(title: new Text("paso 1"), content: new Text("Aprender flutter")),
    new Step(title: new Text("paso 2"), content: new Text("Aprender react")),
    new Step(title: new Text("paso 3"), content: new Text("Todo Listo"))
  ];

  @override
  Widget build(BuildContext context) {
   return new Scaffold(
     
     appBar: new AppBar(
       title: new Text("Mi barra"),
     ),

     body: new Container(
       child: new Stepper(
         //nos indica cual es el paso actual del steper
         currentStep: this._paso,
         steps: myStep,
         type: StepperType.horizontal,

          onStepCancel: (){
            setState((){
              if(_paso>0)
            {
              _paso = _paso-1;
            }else{
              _paso=0;
            }
            });
            
          },

         onStepContinue: (){
           setState(() {
             if(_paso < myStep.length-1){
               _paso=_paso+1;
             }
             else{
               _paso = 0;
             }
           });
         },
         
         onStepTapped: (step){
           setState(() {
             _paso = step;
           });
         },
       ),
     ),

      
   );
  }   
}   