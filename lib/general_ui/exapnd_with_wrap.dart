import 'package:flutter/material.dart';
import 'package:flutterclassjuly/utils/drawe.dart';

class ExpandExample extends StatefulWidget {
  const ExpandExample({super.key});

  @override
  State<ExpandExample> createState() => _ExpandExampleState();
}

class _ExpandExampleState extends State<ExpandExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Expanded with Wrap"),
        centerTitle: true,
        backgroundColor: Colors.deepPurple[100],
        elevation: 5,
      ),
      drawer: Drawe(),
      body: ListView(
        children: [
          Wrap(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Container(
                        color: Colors.grey,
                        height: 200,
                        child: const Center(
                          child: Text("Container 1"),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Container(
                        color: Colors.grey,
                        height: 200,
                        child: const Center(
                          child: Text("Container 1"),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
