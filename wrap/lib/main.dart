import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {

  final color = TextStyle(color: Colors.white);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Wrap'),
          centerTitle: true,
        ),
        body: Center(
          child: Wrap(
            alignment: WrapAlignment.center,
            //direction: Axis.vertical,
            spacing: 10.0,
            children: <Widget>[

              Tag(color: color, texto: 'Metal gear' ,),
              Tag(color: color, texto: 'Overgraft' ,),
              Tag(color: color, texto: 'Baron rojo' ,),
              Tag(color: color, texto: 'portador' ,),
              Tag(color: color, texto: 'Sangre azul' ,),
              Tag(color: color, texto: 'AC / DC' ,),

            ],
          ),
        ),
      ),
    );
  }
}

class Tag extends StatelessWidget {

  final String texto;
  final TextStyle color;

  Tag({
    Key? key,
    required this.color,
    required this.texto,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Chip(
      avatar: CircleAvatar(
        child: Text(this.texto[0]),
        backgroundColor: Colors.white,
      ),
      label: Text(this.texto, style: color,),
      backgroundColor: Colors.blue,
    );
  }
}