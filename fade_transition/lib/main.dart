import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatefulWidget {
  
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin{

  late AnimationController controller;
  late Animation<double> opacidad;

  @override
  void initState() {
    
    controller = new AnimationController(vsync: this, duration: Duration(milliseconds: 1500));
    opacidad = new Tween(begin: 0.0, end: 1.0).animate(controller);

    controller.forward(from: 0.0);

    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.access_alarm),
          onPressed: (){
            controller.forward(from: 0.0);
          },
        ),
        body: Center(
          child: FadeTransition(
            opacity: opacidad,
            child: Rectangulo()
          ),
        ),
      ),
    );
  }
}



class Rectangulo extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
    return Container(
       width: 200,
       height: 200,
       decoration: BoxDecoration(
         color: Colors.blue
       ),
     );
   }
}