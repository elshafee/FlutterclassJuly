import 'package:flutter/material.dart';
import 'package:flutterclassjuly/utils/drawe.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen"),
        centerTitle: true,
        backgroundColor: Colors.deepPurple[200],
      ),
      drawer: Drawe(),
      body: Center(
        child: Text("Any Questions??\n Good Nighht "),
      ),
    );
  }
}
