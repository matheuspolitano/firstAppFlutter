import 'package:flutter/material.dart';

class Resultado extends StatelessWidget{
  final void Function() reset;
  final String msg;
  Resultado(this.msg,this.reset);

  @override
  Widget build(BuildContext context){
    return Column(
      children: <Widget>[
        Text(this.msg,style: TextStyle(fontSize: 40),),
        RaisedButton(child:Text('Reset'),onPressed: this.reset,)
      ]
    );
  }
}