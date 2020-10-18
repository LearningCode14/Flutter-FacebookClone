import 'package:flutter/material.dart';
import 'dart:math';

class PublicacionWidget extends StatefulWidget {
  String nombre, fecha;

  PublicacionWidget({this.nombre,this.fecha});

  @override
  _PublicacionWidgetState createState() => _PublicacionWidgetState(this.nombre,this.fecha);
}

class _PublicacionWidgetState extends State<PublicacionWidget> {
  int contador = 0;
  String nombre, fecha;
  IconData favorito = Icons.favorite_border;
  _PublicacionWidgetState(this.nombre, this.fecha);

  @override
  Widget build(BuildContext context) {
    final int numero = Random().nextInt(50);
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
       child: Column(
         children: <Widget>[
           Row(
             children: <Widget>[
               crearImagen(),
               Column(
                 children: <Widget>[
                   Text(
                     "${this.nombre}",
                     style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                     textAlign: TextAlign.start,
                    ),
                   Text(
                     "${this.widget.fecha}",
                     style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
                     textAlign: TextAlign.left
                    )
                 ],
               )
           ],
          ),
          FadeInImage(
            fit: BoxFit.cover,
            placeholder: AssetImage('assets/img/loading.gif'),
            image: NetworkImage('https://picsum.photos/200/300?random=$numero'),
          ),
          Text("Descripcion de ima imagen"),
          SizedBox(height: 20,width: double.infinity,),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              IconButton(icon: Icon(favorito,color: Colors.green,), onPressed: darLike),
              Text(
                "$contador",
                style: TextStyle(fontSize: 25),
              )
            ],
          )
         ],
       ),
    );
  }

  void darLike()
  {
    if(contador==0)
    {
      contador++;
      favorito = Icons.favorite;
    }
    else if(contador > 0)
    {
      contador--;
      favorito = Icons.favorite_border;
    }

    setState(() {});

  }

  Widget crearImagen()
  {
    int numero = Random().nextInt(50);
    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 1,color: Colors.red),
        borderRadius: BorderRadius.circular(60)
      ),
      width: 50.0,
      height: 50.0,
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