import 'package:flutter/material.dart';
import 'inventory_list.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;

  List<Widget> _children = <Widget>[new InventoryList(), Text('Hello 2')];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Inventory Taker',
          style: TextStyle(fontSize: 22.0),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: _children[_currentIndex],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        backgroundColor: Colors.purple[900],
        onTap: navigate,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: _currentIndex == 0 ? Colors.yellow : Colors.black,
              ),
              title: Text('Home',
                  style: TextStyle(
                      color: Colors.tealAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 16))),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.description,
                color: _currentIndex == 1 ? Colors.yellow : Colors.black,
              ),
              title: Text('Inventory',
                  style: TextStyle(
                      color: Colors.tealAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 16)))
        ],
      ),
    );
  }

  void navigate(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
