import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: MiPagina1(),
    );
  }
}

class MiPagina1 extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: BotonFlotante(),
      bottomNavigationBar: BarraNavegacion(),
    );
  }
}

class MiPagina2 extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: BotonFlotante(),
      bottomNavigationBar: BarraNavegacion(),
    );
  }
}

class BarraNavegacion extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.search), title: Text('buscar')
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.security), title: Text('buscar')
        ),
      ],
    );
  }
}

class BotonFlotante extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      elevation: 0,
      highlightElevation: 0,
      child: Icon(Icons.add),
      onPressed: (){
       Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => MiPagina2()));
      },
    );
  }
}