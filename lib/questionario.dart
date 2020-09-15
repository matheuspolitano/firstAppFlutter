import 'package:flutter/material.dart';
import 'pergunta.dart';
import 'respostas.dart';
import 'resultado.dart';
class Questionario extends StatelessWidget{
  final int numRes;
  final  perguntas;
  final void Function(int) resposta;

  Questionario({this.numRes,this.perguntas,this.resposta});





  @override
  Widget build(BuildContext context){

    final List<Map<Object,Object>> res = perguntas[numRes%2]['resposta'];
    return  Column(
        children:  <Widget>[
          Pergunta(perguntas[numRes%2]['pergunta']),
          ...res.map((e) =>  Resposta(e['text'],()=>this.resposta(e['nota']))).toList(),
        ]
    );
  }
}