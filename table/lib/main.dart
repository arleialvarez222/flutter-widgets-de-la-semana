import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: MiPagina(),
    );
  }
}

class MiPagina extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
        child: Table(
          defaultVerticalAlignment: TableCellVerticalAlignment.bottom,
          //defaultColumnWidth: FixedColumnWidth(50),
          columnWidths: {
            //0: FractionColumnWidth(0.5)
          },
          border: TableBorder.all(),
          children:[  
            TableRow(
              children:[
                RectanguloLarge(),
                RectanguloMedium(),
                RectanguloSmall(),
              ] 
            ),
            TableRow(
              children:[
                RectanguloSmall(),
                RectanguloLarge(),
                RectanguloMedium(),
              ] 
            ),
            TableRow(
              children:[
                RectanguloMedium(),
                RectanguloSmall(),
                RectanguloLarge(),
              ] 
            ),
          ]
        ),
      ),
    );
  }
}

class RectanguloLarge extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
    return Container(
       width: 70,
       height: 200,
       margin: EdgeInsets.all(5),
       decoration: BoxDecoration(
         color: Colors.blue
       ),
     );
   }
}

class RectanguloMedium extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
    return Container(
       width: 70,
       height: 150,
       margin: EdgeInsets.all(5),
       decoration: BoxDecoration(
         color: Colors.teal
       ),
     );
   }
}
class RectanguloSmall extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
    return Container(
       width: 70,
       height: 100,
       margin: EdgeInsets.all(5),
       decoration: BoxDecoration(
         color: Colors.yellow
       ),
     );
   }
}