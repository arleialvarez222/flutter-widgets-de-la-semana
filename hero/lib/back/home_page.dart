import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hero/back/detail_page.dart';


class HomePage extends StatelessWidget {

  void pushRoute(BuildContext context) {
    Navigator.push(context, CupertinoPageRoute(
      builder: (BuildContext context) => const DetailPage()));
  }

  const HomePage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Hero animation'),
      ),
      body: Table(
        children: <TableRow>[

          const TableRow(
            children: [
              Placeholder(fallbackHeight: 150,),
              Placeholder(fallbackHeight: 150,),
              Placeholder(fallbackHeight: 150,),
            ]
          ),

          TableRow(
            children: [
              GestureDetector(
                onTap: () => pushRoute(context),
                child: const Hero(tag: 'logo',child: FlutterLogo(size: 150,))
              ),
              const Placeholder(fallbackHeight: 150,),
              const Placeholder(fallbackHeight: 150,),
            ]
          ),

          const TableRow(
            children: [
              Placeholder(fallbackHeight: 150,),
              Placeholder(fallbackHeight: 150,),
              Placeholder(fallbackHeight: 150,),
            ]
          ),

          const TableRow(
            children: [
              Placeholder(fallbackHeight: 150,),
              Placeholder(fallbackHeight: 150,),
              Placeholder(fallbackHeight: 150,),
            ]
          ),

        ],
      )
   );
  }
}