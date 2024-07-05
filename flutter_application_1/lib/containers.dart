import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'App prueba flutter',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'App GCO'),

    );
  }
}

class MyHomePage extends StatefulWidget{
  MyHomePage({Key? key, this.title}):super(key: key);
  final String? title;

  @override
  _MyHomePageState createState()=> _MyHomePageState();


}
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black12,
        title: Text(widget.title!),
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(10),
                child: Text('Contenedor 1'),
                color: Colors.blue,
                margin: EdgeInsets.only(bottom: 30),
              ),
              Container(
                child: Text('Contenedor 2'),
                color: Colors.greenAccent,
                height: 40,
                width: 40,
                margin: EdgeInsets.only(bottom: 30),
              ),
              Container(
                child: Text('Contenedor 3'),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.amber,

                ),
                margin: EdgeInsets.only(bottom: 30),
              ),
              Container(
                child: Text('Contenedor 4'),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue,                  
                ),
                padding: EdgeInsets.all(50),
                margin: EdgeInsets.only(bottom: 30),
              ),
              Container(
                child: Text('Contenedor 5'),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black12,
                    width: 10,
                    style: BorderStyle.solid
                  ),
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                padding: EdgeInsets.all(8),
                margin: EdgeInsets.only(bottom: 30),
              ),
            ],
          ),
      ),
    );
  }
}