import 'dart:math';

import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: MiPagina(),
    );
  }
}

class MiPagina extends StatelessWidget {

  final rnd = new Random();
  
  final List<Color> colores = [
    Colors.red,
    Colors.black,
    Colors.green,
    Colors.blue,
    Colors.pink,
    Colors.white,
    Colors.orange,
    Colors.yellow,
    Colors.greenAccent,
    Colors.blueGrey,
    Colors.yellowAccent,
  ];

  @override
  Widget build(BuildContext context) {

    final List<Widget> items = List.generate(200, (i) => Container(
      width: double.infinity,
      height: 150,
      color: colores[ rnd.nextInt(this.colores.length)],
    ));

    /* return Scaffold(
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index){
          return items[index];
        }
      ),
    ); */

    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            floating: true,
            title: Text('SliverAppbar'),
            centerTitle: true,
            expandedHeight: 200,
            flexibleSpace: Image.network(
              'https://cnnespanol.cnn.com/wp-content/uploads/2019/12/s_64a163f16ecbb099e52f2f8271f73cbbfcfc9034be4d646f7375e4db1ca6f3d7_1573501883482_ap_19001106049831-1.jpg?quality=100&strip=info&w=320&h=240&crop=1',
              fit: BoxFit.cover,
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(items),
          ),
        ],
      ),
    );
  }
}