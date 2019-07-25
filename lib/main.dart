import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/message.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      builder: (context)=>Message(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          body: MainView(),
        ),
      ),
    );
  }
}

class MainView extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Center(
      child: Consumer<Message>(
            builder: (context, msj, _){ 
              return Column(
        children: <Widget>[
          RaisedButton(
            child: Text('uno'),
            onPressed: (){
              msj.messageData = 'uno';
            },
          ),
          RaisedButton(
            child: Text('dos'),
            onPressed: (){
              msj.messageData = 'button dos';
            },
          ),
          Text(msj.message)
        ],);
            }
    ));
  }
}