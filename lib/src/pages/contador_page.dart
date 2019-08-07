import 'package:flutter/material.dart';

class Contador extends StatefulWidget {

  @override
  createState() => _ContadorState();
  
}

class _ContadorState extends State<Contador> {

    //estilo
  final _estiloText = TextStyle(fontSize: 25.0);
    //variable
  int _conteo = 0;

 @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Title'),
        elevation: 10.9,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Numero de Taps:',
              style: _estiloText,
            ),
            Text( '$_conteo',
              style: _estiloText,
            ),
          ],)
        ), 
        floatingActionButton: _crearBotones(),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );

  }

  //metodo para tener botones dividir codigo con funciones
  Widget _crearBotones() {

    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
       children: <Widget>[
         SizedBox( width: 30,),
          FloatingActionButton( child: Icon(Icons.exposure_zero),onPressed: _reset),
          Expanded( child: SizedBox( )),
          FloatingActionButton( child: Icon(Icons.remove),onPressed:_sustraer ),
          SizedBox( width: 10.0,),
          FloatingActionButton( child: Icon(Icons.add),onPressed: _agregar )
       ],
    );
  }

  void _agregar(){
    setState(()=> _conteo++);
        //solo existe en los widget state el setState
        //es para reiniciar el scaffold
  }

  void _sustraer(){
    setState(()=> _conteo--);
  }

  void _reset(){
    setState(()=> _conteo= 0);
  }
}