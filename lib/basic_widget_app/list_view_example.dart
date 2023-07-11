import 'package:flutter/material.dart';

class ListViewExample extends StatefulWidget {
  const ListViewExample({super.key});

  @override
  State<ListViewExample> createState() => _ListViewExampleState();
}

class _ListViewExampleState extends State<ListViewExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        ListTile(
          title: Text("Renad"),
        ),
        Divider(
          thickness: 2,
          indent: MediaQuery.of(context).size.width * 0.25,
          endIndent: MediaQuery.of(context).size.width * 0.25,
        ),
        ListTile(
          title: Text("Reem"),
        ),
        Divider(
          thickness: 2,
          indent: MediaQuery.of(context).size.width * 0.25,
          endIndent: MediaQuery.of(context).size.width * 0.25,
        ),
        ListTile(
          title: Text("Reema"),
        ),
        Divider(
          thickness: 2,
          indent: MediaQuery.of(context).size.width * 0.25,
          endIndent: MediaQuery.of(context).size.width * 0.25,
        ),
        ListTile(
          title: Text("Shaima"),
        ),
        Divider(
          thickness: 2,
          indent: MediaQuery.of(context).size.width * 0.25,
          endIndent: MediaQuery.of(context).size.width * 0.25,
        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: const Center(
            child: Text("Osama"),
          ),
        ),
        Divider(
          thickness: 2,
          indent: MediaQuery.of(context).size.width * 0.25,
          endIndent: MediaQuery.of(context).size.width * 0.25,
        ),
        ListTile(
          title: Text("Doaa"),
        ),
        Divider(
          thickness: 2,
          indent: MediaQuery.of(context).size.width * 0.25,
          endIndent: MediaQuery.of(context).size.width * 0.25,
        ),
        ListTile(
          title: Text("Shomok"),
        ),
        Divider(
          thickness: 2,
          indent: MediaQuery.of(context).size.width * 0.25,
          endIndent: MediaQuery.of(context).size.width * 0.25,
        ),
        ListTile(
          title: Text("Fatima"),
        ),
        Divider(
          thickness: 2,
          indent: MediaQuery.of(context).size.width * 0.25,
          endIndent: MediaQuery.of(context).size.width * 0.25,
        ),
      ],
    ));
  }
}
