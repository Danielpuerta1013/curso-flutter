import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

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
      title: Text(widget.title!),
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Material Icon: ', style: TextStyle(color: Colors.deepOrange, fontSize: 30, fontWeight: FontWeight.bold),),
              Padding(padding: EdgeInsets.all(10)),
              Icon(Icons.home, color: Colors.amber,size: 30,)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Cupertino Icon: ', style: TextStyle(color: Colors.deepPurple, fontSize: 30, fontWeight: FontWeight.bold),),
              Padding(padding: EdgeInsets.all(10)),
              Icon(CupertinoIcons.home, color: Colors.amber,size: 30,)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('Assets/Images/logo.png', width: 150,)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXDk5Uw37oDY2BEjHRmiRpfwl5daXWwQzNpA&s',width: 150,)
            ],
          ),
          Container(
              color: Colors.blue,
              height: 100,
              width: MediaQuery.of(context).size.width/1.2,

              child: const Text(
                'TEXTO CUALQUIERA',
                style: TextStyle(color: Colors.red, fontSize: 60, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),textAlign: TextAlign.left, overflow: TextOverflow.visible,))
        ],
      ),
    ),
  );
  }
}