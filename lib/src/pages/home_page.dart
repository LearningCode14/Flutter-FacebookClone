import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Componentes"),
      ),
      body: crearItems() ,
    );
  }

  Widget crearItems() {
    return ListView(
      padding: EdgeInsets.all(20.0),
      children: <Widget>[
        ListTile(
          title: Text(
            "Noticia 1",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 25.0
            ),
          ),
          subtitle: Text(
            "Haz clic para ver mas",
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
          leading: Icon(
            Icons.add_alert,
            color: Colors.amber,
          ),
          trailing: Icon(Icons.keyboard_arrow_right, size: 55.0,),
          onTap: (){
            print("Has hecho clic");
          },
        ),
      ],
    );
  }
}

