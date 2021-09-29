import 'dart:async';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner:false,
      home: MiPagina(),
    );
  }
}

class MiPagina extends StatefulWidget {
  const MiPagina({Key? key}) : super(key: key);


  @override
  State<MiPagina> createState() => _MiPaginaState();
}

class _MiPaginaState extends State<MiPagina> {

  final colorStream = StreamController<Color>();

  int counter = -1;
  final List<Color> colorList = [
    Colors.blue,
    Colors.yellowAccent,
    Colors.green,
  ];

  @override
  void dispose() {
    colorStream.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: StreamBuilder(
          stream:  colorStream.stream,
          builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot){

            if(!snapshot.hasData ){
              return const LoadingWidget();
            }

            if(snapshot.connectionState == ConnectionState.done){
              return const Text('Fin del Stream :(');
            }

            return Container(
              height: 150,
              width: 150,
              color: snapshot.data,
            );

          }
        ),
      ),

      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.color_lens),
        onPressed: (){

          counter++;
          if(counter < colorList.length) {
            colorStream.sink.add(colorList[counter] );
          }else
          colorStream.close();
        }
      ),
    );
  }
}

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const <Widget>[

        Text('Esperando clicks'),

        SizedBox(height: 20),

        CircularProgressIndicator(),

      ],
    );
  }
}