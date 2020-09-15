import 'package:flutter/material.dart';
import 'pergunta.dart';
import 'respostas.dart';
import 'resultado.dart';
import 'questionario.dart';
main()=>runApp(MyApp());

class MyAppState extends State<MyApp>{
  var numRes = 0;
  int nota = 0;
  final perguntas = [{'pergunta':'Qual o time do Matheus ?',
    'resposta':[{'text' :'Corinthians','nota':10},{ 'text' :'Palmeiras','nota':3},{'text' :'São Paulo','nota' :2}]},
    {'pergunta':'Qual time do Gabriel?',
      'resposta':[{'text' :'Corinthians','nota':10},{'text' :'São Paulo','nota' :2}]}];


  bool get hasResposta{
    return  this.perguntas.length > numRes;
  }


  void resposta(int notaIn){
    print('Click ${numRes}');
    if(this.hasResposta){
      setState(() {
        numRes++;
        nota += notaIn;
      });
      print(nota);
    };

  }
  void reset(){
    setState(() {
      numRes = 0;
      nota = 0;
    });
  }


  @override
  Widget build(BuildContext context){




    return MaterialApp(
        home:Scaffold(
          appBar: AppBar(
            title: Text('Matheus question'),

          ),body:  hasResposta ? Questionario(numRes: numRes,perguntas: perguntas,resposta: resposta,): Resultado('Parabens, sua nota foi ${nota}!',reset),
        )

    );
  }

}


class MyApp extends StatefulWidget{
  MyAppState createState(){
    return MyAppState();
  }
}