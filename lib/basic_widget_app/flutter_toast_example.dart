import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class FlutterToastExample extends StatefulWidget {
  const FlutterToastExample({super.key});

  @override
  State<FlutterToastExample> createState() => _FlutterToastExampleState();
}

class _FlutterToastExampleState extends State<FlutterToastExample> {
  void _sendEmail() {
    Fluttertoast.showToast(
        msg: "Email sent Successfully",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: MaterialButton(
        onPressed: () {
          _sendEmail();
        },
        color: Colors.red,
        child: const Text(
          "Send Email",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      )),
    );
  }
}
