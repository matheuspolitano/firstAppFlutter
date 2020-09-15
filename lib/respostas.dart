import 'package:flutter/material.dart';

class Resposta extends StatelessWidget{
  final String resposta;
  final void Function() quandoSelecionado;
  Resposta(this.resposta,this.quandoSelecionado);

  @override
  Widget build(BuildContext context){
    return Container(
      width: double.infinity,
      child:RaisedButton(child: Text(this.resposta),color: Colors.blue,textColor: Colors.white,onPressed: this.quandoSelecionado,),
    );
  }

}