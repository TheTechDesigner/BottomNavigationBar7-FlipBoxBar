import 'package:flip_box_bar/flip_box_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xFFC41A3B),
        primaryColorLight: Color(0xFFFBE0E6),
        accentColor: Color(0xFF1B1F32),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String title = 'BottomNavigationBar (FlipBoxBar)';
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      bottomNavigationBar: FlipBoxBar(
        animationDuration: Duration(seconds: 1),
        navBarHeight: 100.0,
        selectedIndex: _selectedIndex,
        onIndexChanged: (_newIndex) {
          setState(() {
            _selectedIndex = _newIndex;
          });
        },
        items: [
          FlipBarItem(
            icon: Icon(Icons.home, color: Colors.white),
            text: Text('Home', style: TextStyle(color: Colors.white)),
            frontColor: Colors.red,
            backColor: Colors.redAccent,
          ),
          FlipBarItem(
            icon: Icon(Icons.category, color: Colors.white),
            text: Text('Category', style: TextStyle(color: Colors.white)),
            frontColor: Colors.green,
            backColor: Colors.greenAccent,
          ),
          FlipBarItem(
            icon: Icon(Icons.search, color: Colors.white),
            text: Text('Search', style: TextStyle(color: Colors.white)),
            frontColor: Colors.orange,
            backColor: Colors.orangeAccent,
          ),
          FlipBarItem(
            icon: Icon(Icons.shopping_cart, color: Colors.white),
            text: Text('Cart', style: TextStyle(color: Colors.white)),
            frontColor: Colors.purple,
            backColor: Colors.purpleAccent,
          ),
          FlipBarItem(
            icon: Icon(Icons.person, color: Colors.white),
            text: Text('Person', style: TextStyle(color: Colors.white)),
            frontColor: Colors.grey,
            backColor: Colors.black26,
          ),
        ],
      ),
    );
  }
}
