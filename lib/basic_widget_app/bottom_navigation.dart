import 'package:flutter/material.dart';
import 'package:flutterclassjuly/basic_widget_app/flutter_toast_example.dart';
import 'package:flutterclassjuly/basic_widget_app/grid_view_eample.dart';
import 'package:flutterclassjuly/basic_widget_app/list_view_example.dart';
import 'package:flutterclassjuly/utils/drawe.dart';

class BottomNavigatonExample extends StatefulWidget {
  const BottomNavigatonExample({super.key});

  @override
  State<BottomNavigatonExample> createState() => _BottomNavigatonExampleState();
}

class _BottomNavigatonExampleState extends State<BottomNavigatonExample> {
  int currentindex = 0;

  void onItemTap(int index) {
    setState(() {
      currentindex = index;
    });
  }

  List<Widget> titles = [
    Text("GridView"),
    Text("ListView"),
    Text("Flutter Toast"),
  ];

  List<Widget> widgetScreens = [
    GridViewExample(),
    ListViewExample(),
    FlutterToastExample(),
  ];

  //Text("Bottom Navigation Example"),
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: titles[currentindex],
        centerTitle: true,
        backgroundColor: Colors.deepPurple[100],
      ),
      drawer: Drawe(),
      body: Center(
        child: widgetScreens[currentindex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.deepOrange,
        currentIndex: currentindex,
        type: BottomNavigationBarType.shifting,
        iconSize: 25,
        elevation: 5,
        unselectedItemColor: Colors.grey,
        onTap: onItemTap,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.grid_3x3),
            label: 'GridView',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt),
            label: 'ListView',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notification_add),
            label: 'FlutterToast',
          ),
        ],
      ),
    );
  }
}
