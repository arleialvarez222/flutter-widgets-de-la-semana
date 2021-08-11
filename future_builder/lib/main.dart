import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:future_builder/models/reqResRespuesta.dart';
import 'package:http/http.dart' as http;
 
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

Future<ReqResRespuesta> getUsuarios() async{
  final resp = await http.get(Uri.parse('https://reqres.in/api/users'));
  return reqResRespuestaFromJson(resp.body);
  
}

class MiPagina extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
        centerTitle: true,
      ),
      body: FutureBuilder(
        future: getUsuarios(),
        builder: (BuildContext context, AsyncSnapshot<ReqResRespuesta> snapshot) {

          if(snapshot.connectionState == ConnectionState.waiting){
            return Center(child: CircularProgressIndicator());
          }else{
            return _ListaUsuarios(snapshot.data!.data);
          }
        },
      ),
    );
  }
}

class _ListaUsuarios extends StatelessWidget {

  final List<Usuario> usuarios;

  const _ListaUsuarios(this.usuarios);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: usuarios.length,
      itemBuilder: (BuildContext context, int i){

        final usuario = usuarios[i];
        return FadeIn(
          delay: Duration(milliseconds: 100 * i),
          child: ListTile(
            title: Text('${usuario.firstName} ${usuario.lastName}'),
            subtitle: Text(usuario.email),
            trailing: Image.network(usuario.avatar),
          ),
        );
      }
    );
  }
}