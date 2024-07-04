
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

class _MyHomePageState extends State<MyHomePage>{
  Icon _corazon = const Icon(Icons.favorite_border, color: Colors.white);
  bool _liked=false;
  int _elementoSeleccionado=0;
  String textoAVisualizar='0:Home';

  @override
  Widget build(BuildContext context){
    if (kIsWeb){
      return material();
    }else if(defaultTargetPlatform==TargetPlatform.iOS){
      return cupertino();
    }else{
      return material();
    }

  }
  Widget material(){
    return Scaffold(
      appBar: AppBar(
        title: (Text(widget.title!,style: const TextStyle(color: Colors.white),)),
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white), // cambia el color del drawer
        actions: [
          IconButton(onPressed: (){_likedChange();}, icon: _corazon)
        ],
      ),
      drawer: const Drawer(
        child: Column(
          children: [
            DrawerHeader(child: Text('Empleados', style: TextStyle(color: Colors.black54, fontSize: 25, fontWeight: FontWeight.bold),)),
            Text('Informacion personal'),
            Text('Ingreso'),
            Text('Opciones de cuenta'),
            Text('Nomina'),
          ],
        ),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(textoAVisualizar,style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),)
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton.extended(
        onPressed: (){_likedChange();},
        backgroundColor: Colors.red,
        icon: _corazon,
        label: const Text('Like',style: TextStyle(color: Colors.white),),
      ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home,color: Colors.white,),label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.supervised_user_circle,color: Colors.white,),label: 'Mi cuenta'),
          BottomNavigationBarItem(
              icon: Icon(Icons.attach_money,color: Colors.white,),label: 'Nomina'),
          BottomNavigationBarItem(
              icon: Icon(Icons.qr_code_scanner,color: Colors.white,),label: 'Ingreso'),
        ],
        backgroundColor: Colors.black,
        selectedItemColor: Colors.blue,
        currentIndex: _elementoSeleccionado,
        onTap: _itemPulsado,
        unselectedItemColor: Colors.white,
      ),
    );
  }

  Widget cupertino(){
    return const CupertinoPageScaffold(child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Aplicación barra de navegacion', style: TextStyle(decoration: TextDecoration.none,fontSize: 20),)
        ],
      ),
    ),
      navigationBar: CupertinoNavigationBar(
        backgroundColor: Colors.blue,
        leading:  Icon(Icons.arrow_back_ios, color: Colors.white,),
        middle:  Text('Titulo de pagina', style: TextStyle(color: Colors.white),),
        trailing:  Icon(Icons.shopping_bag, color: Colors.white,),
      ),
    );
  }

  void _likedChange() {
    setState(() {
      if(_liked){
        _corazon = const Icon(Icons.favorite_border, color: Colors.white);
        _liked=false;
      }else{
        _corazon = const Icon(Icons.favorite, color: Colors.white);
        _liked=true;
      }
    });

  }

  void _itemPulsado(int index){
    setState(() {
      _elementoSeleccionado=index;
      switch(_elementoSeleccionado){
        case 0:
          textoAVisualizar= '$_elementoSeleccionado:Home';
          break;
        case 1:
          textoAVisualizar= '$_elementoSeleccionado:Mi cuenta';
          break;
        case 2:
          textoAVisualizar= '$_elementoSeleccionado:Nomina';
          break;
        case 3:
          textoAVisualizar= '$_elementoSeleccionado:Ingreso';
          break;
      }
    });
  }


}
