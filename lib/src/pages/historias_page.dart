import 'dart:math';

import 'package:flutter/material.dart';
import 'package:components/src/Widgets/publicacionWidget.dart';

class HistoriasPage extends StatefulWidget {
  @override
  _HistoriasPageState createState() => _HistoriasPageState();
}

class _HistoriasPageState extends State<HistoriasPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Social Network"),
      ),
      body:ListView(
        children:<Widget>[
          Column(
          children: <Widget>[
            crearHistorias(),
            mostrarPublicaciones(),
          ],
        ),
        ] 
      ),
    );
  }

  Widget mostrarPublicaciones()
  {
    return Column(
      children: <Widget>[
        PublicacionWidget(
          nombre: "Mario Alberto C",
          fecha: "13/Octubre/2020",
        )
      ],
    );
  }

  Widget crearHistorias()
  {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      height: 120,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          crearHistoria(),
          crearHistoria(),
          crearHistoria(),
          crearHistoria(),
          crearHistoria(),
          crearHistoria(),
          crearHistoria(),
        ],
      ),
    );
  }

  Widget crearHistoria()
  {
    int numero = (Random().nextInt(50)+1);
    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 1,color: Colors.red),
        borderRadius: BorderRadius.circular(60)
      ),
      width: 100.0,
      height: 100.0,
      margin: EdgeInsets.symmetric(horizontal: 5),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: FadeInImage(
          fit: BoxFit.cover,
          placeholder: AssetImage("assets/img/loading.gif"), 
          image: NetworkImage('https://picsum.photos/200/300?random=$numero')
        )
      ),
    );
  }
}


