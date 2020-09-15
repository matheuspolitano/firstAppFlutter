import 'package:flutter/material.dart';


class Pergunta extends StatelessWidget{
  final String texto;
  Pergunta(this.texto);

  @override
  Widget build(BuildContext context){
    return Container(child:Text(texto,style: TextStyle(fontSize: 34),textAlign: TextAlign.center,),width: double.infinity,margin: EdgeInsets.all(20),);

  }
}