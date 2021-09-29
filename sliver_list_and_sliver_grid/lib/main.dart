import 'dart:math';

import 'package:flutter/material.dart';

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

class MiPagina extends StatelessWidget {
  const MiPagina({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final List<Widget> items = List.generate(50, (i) => Rectangulo(i));

    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[

          const SliverAppBar(title: Text('SliverGrid'),),

          SliverGrid.count(
            crossAxisCount: 4,
            children: items,
          ),

          const SliverAppBar(title: Text('SliverList'), pinned: true,),

          SliverList(
            delegate: SliverChildBuilderDelegate((context, i) {
              return items[i];
            }, childCount: items.length)
          ),
        ],
      ),
      );
    
  }
}

class Rectangulo extends StatelessWidget {

  final int index;
  const Rectangulo(this.index);

    @override
    Widget build(BuildContext context) {

    final rnd = Random();
    final r = rnd.nextInt(255);
    final g = rnd.nextInt(255);
    final b = rnd.nextInt(255);

    return Container(
      child: Center(
        child: Text('$index', style: const TextStyle(color: Colors.white),),
      ),
       width: 150,
       height: 150,
       decoration: BoxDecoration(
         color: Color.fromRGBO(r, g, b, 1)
       ),
     );
   }
}