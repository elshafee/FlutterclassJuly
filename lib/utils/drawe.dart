import 'package:flutter/material.dart';
import 'package:flutterclassjuly/api_app/breaking_bad_app/ui/breaking_bad.dart';
import 'package:flutterclassjuly/bmi_calculator/bmi_calculator.dart';
import 'package:flutterclassjuly/general_ui/exapnd_with_wrap.dart';
import 'package:transition/transition.dart';

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
            onTap: () {
              Navigator.of(context).pushNamed('/home');
            },
            splashColor: Colors.deepPurple[100],
          ),
          ListTile(
            title: Text("Bottom Navigation Screen"),
            onTap: () {
              Navigator.of(context).pushNamed('/bottom');
            },
            splashColor: Colors.deepPurple[100],
          ),
          ListTile(
            title: Text("BMI Calculator"),
            onTap: () {
              Navigator.push(
                  context,
                  Transition(
                      child: BMICalculator(),
                      transitionEffect: TransitionEffect.FADE));
            },
            splashColor: Colors.deepPurple[100],
          ),
          ListTile(
            title: const Text("Expand Example"),
            onTap: () {
              Navigator.push(
                  context,
                  Transition(
                      child: const ExpandExample(),
                      transitionEffect: TransitionEffect.FADE));
            },
            splashColor: Colors.deepPurple[100],
          ),
          ListTile(
            title: const Text("Breaking Bad App"),
            onTap: () {
              Navigator.push(
                  context,
                  Transition(
                      child: const BreakingBadApp(),
                      transitionEffect: TransitionEffect.FADE));
            },
            splashColor: Colors.deepPurple[100],
          ),
        ],
      ),
    );
  }
}
