import 'package:cozinheiros/paginas.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TCC',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _seletedItem = 1;
  var _pages = [Cardapio(), Reservar(), Sobre()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Três Cozinheiros Café'),
      ),
      body: Center(
        child: _pages[_seletedItem],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.local_cafe), title: Text('Cardápio')),
          BottomNavigationBarItem(
              icon: Icon(Icons.done_outline), title: Text('Reservar')),
          BottomNavigationBarItem(
              icon: Icon(Icons.comment), title: Text('Sobre'))
        ],
        currentIndex: _seletedItem,
        onTap: (index) {
          setState(() {
            _seletedItem = index;
          });
        },
      ),
    );
  }
}
