import 'package:flutter/material.dart';

//mis importaciones
import 'package:app_curso/src/pages/home_page.dart';
import 'package:app_curso/src/pages/contador_page.dart';

//mi clasee
class Myapp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        //child: HomePage(),
        child: Contador(),
        ) 
    );
  }

}