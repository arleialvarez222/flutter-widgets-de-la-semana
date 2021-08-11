import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: MiPagina(),
    );
  }
}

class MiPagina extends StatefulWidget {
  const MiPagina({
    Key? key,
  }) : super(key: key);

  @override
  _MiPaginaState createState() => _MiPaginaState();
}

class _MiPaginaState extends State<MiPagina> {

  double opacidad = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.opacity),
        onPressed: (){
          setState(() {
            opacidad = (opacidad == 1) ? 0 : 1;
          });
        },
      ),
      body: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: double.infinity,
        child: Wrap(
          direction: Axis.vertical,
          spacing: 50,
          children: <Widget>[
            Rectangulo(Color(0xff00E057), 1),
            Rectangulo(Color(0xff00BFF4), opacidad),
            Rectangulo(Color(0xffFEBF2F), 1),
          ],
        ),
      ),
    );
  }
}


class Rectangulo extends StatelessWidget {

  final Color color;
  final double opacidad;

  const Rectangulo( this.color, this.opacidad);

    @override
    Widget build(BuildContext context) {
    //return Opacity(
    return AnimatedOpacity(
      duration: Duration(seconds: 1),
      opacity: opacidad,
      child: Container(
         width: 200,
         height: 200,
         decoration: BoxDecoration(
           color: color,
         ),
       ),
    );
   }
}