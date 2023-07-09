import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController conpassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[300],
      body: Center(
        child: Container(
          height: 450,
          width: 350,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Center(
                  child: Text(
                    "SignUp",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.cyan,
                    ),
                  ),
                ),
                TextFormField(
                  controller: email,
                  keyboardType: TextInputType.emailAddress,
                  obscureText: false,
                  decoration: InputDecoration(
                      label: const Text("Email"),
                      prefixIcon: const Icon(Icons.email),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                ),
                TextFormField(
                  controller: password,
                  keyboardType: TextInputType.emailAddress,
                  obscureText: true,
                  decoration: InputDecoration(
                    label: Text("Password"),
                    prefixIcon: Icon(Icons.password),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed('/login');
                  },
                  child: const Text("Have an account? Login here"),
                ),
                ElevatedButton(
                  onPressed: () {
                    String _email = email.text.toString();
                    String _password = password.text.toString();
                    if (_email.isNotEmpty && _password.isNotEmpty) {
                      Navigator.of(context).pushNamed('/home');
                    } else {
                      print("Error");
                    }
                    print("Email is: ${email.text.toString()}");
                    print("Password is: ${password.text.toString()}");
                    print("Done sucessfully");
                  },
                  child: const Text("Login"),
                ),
                // InkWell(
                //   splashColor: Colors.red,
                //   onTap: () {
                //     setState(() {
                //       color = Colors.red;
                //     });
                //     print(Colors.red.runtimeType);
                //     print("InkWell");
                //   },
                //   child: Container(
                //     height: 50,
                //     width: 100,
                //     decoration: BoxDecoration(
                //       borderRadius: BorderRadius.circular(20),
                //       color: color,
                //     ),
                //     child: Center(
                //       child: Text(
                //         "Login",
                //         style: TextStyle(color: Colors.white),
                //       ),
                //     ),
                //   ),
                // )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
