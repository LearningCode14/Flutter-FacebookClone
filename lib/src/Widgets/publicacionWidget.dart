import 'package:flutter/material.dart';
import 'dart:math';

class PublicacionWidget extends StatefulWidget {
  
  @override
  _PublicacionWidgetState createState() => _PublicacionWidgetState();
}

class _PublicacionWidgetState extends State<PublicacionWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Column(
         children: <Widget>[
           Row(
             children: <Widget>[
               crearImagen(),
           ],
          )
         ],
       ),
    );
  }

  Widget crearImagen()
  {
    int numero = Random().nextInt(50);
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