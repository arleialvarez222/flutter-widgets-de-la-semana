import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Container(
            width: double.infinity,
            height: 300,
            child: PageView(
              controller: PageController(viewportFraction: 0.5),
              physics: BouncingScrollPhysics(),
              children: <Widget>[
                Pagina(Colors.blue),
                Pagina(Colors.red),
                Pagina(Colors.green),
              ],
            ),
          ),
        )
      ),
    );
  }
}

class Pagina extends StatelessWidget {

  final Color color;

  const Pagina(this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      margin: EdgeInsets.only(left: 20),
      decoration: BoxDecoration(
        color: this.color,
        borderRadius: BorderRadius.circular(30)
      ),
    );
  }
}