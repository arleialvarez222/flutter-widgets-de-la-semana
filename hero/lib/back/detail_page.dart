
import 'package:flutter/material.dart';


class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Deteil'),
      ),
      body: Column(
        children: const <Widget>[
          Hero(tag: 'logo',child: FlutterLogo(size: 450)),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              'adadasddasdasddas dsadsad sd sds das d sad dasdsadsadsad asd sad asd as dsa d sd s d ssd ',
              style: TextStyle(fontSize: 30),),
          ),
        ],
      )
   );
  }
}