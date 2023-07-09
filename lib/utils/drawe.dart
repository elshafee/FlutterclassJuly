import 'package:flutter/material.dart';

class Drawe extends StatefulWidget {
  const Drawe({super.key});

  @override
  State<Drawe> createState() => _DraweState();
}

class _DraweState extends State<Drawe> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('assets/person.jpg'),
            ),
            accountName: Text("Ahmad Elshafee"),
            accountEmail: Text("ahmad@gmal.com"),
          ),
          ListTile(
            title: Text("Home Screen"),
            onTap: () {},
            splashColor: Colors.deepPurple[100],
          ),
        ],
      ),
    );
  }
}
