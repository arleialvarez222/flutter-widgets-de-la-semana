import 'package:flutter/material.dart';
import 'package:inherited_widget/models/mis_colores.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: MiPagina(),
    );
  }
}

class MiPagina extends StatefulWidget {
  const MiPagina({
    Key? key,
  }) : super(key: key);

  @override
  State<MiPagina> createState() => _MiPaginaState();
}

class _MiPaginaState extends State<MiPagina> {

  Color color1 = Colors.redAccent;
  Color color2 = Colors.teal;

  @override
  Widget build(BuildContext context) {
    return MisColoresW(
      color1: color1,
      color2: color2,
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const <Widget>[
    
              Rectangulo1(),
              Rectangulo2(),
    
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.contact_mail),
          onPressed: (){
            setState(() {
              color1 = Colors.green;
              color2 = Colors.purple;
            });
          },
        ),
      ),
    );
  }
}


class Rectangulo1 extends StatelessWidget {
  const Rectangulo1({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {

      final misColoresW = context.dependOnInheritedWidgetOfExactType<MisColoresW>();

      return Container(
        width: 70,
        height: 70,
        decoration: BoxDecoration(
          color: misColoresW!.color1
        ),
      );
   }
}

class Rectangulo2 extends StatelessWidget {
  const Rectangulo2({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {

      final misColoresW = context.dependOnInheritedWidgetOfExactType<MisColoresW>();

      return Container(
        width: 70,
        height: 70,
        decoration: BoxDecoration(
          color: misColoresW!.color2
        ),
      );
   }
}