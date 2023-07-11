import 'package:flutter/material.dart';
import 'package:flutterclassjuly/utils/drawe.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';

class BMICalculator extends StatefulWidget {
  const BMICalculator({super.key});

  @override
  State<BMICalculator> createState() => _BMICalculatorState();
}

class _BMICalculatorState extends State<BMICalculator> {
  int currenIndex = 0;
  String result = "";
  TextEditingController heightController = TextEditingController();
  TextEditingController weightController = TextEditingController();
  double height = 0;
  double weight = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BMI Calculator"),
        centerTitle: true,
        backgroundColor: Colors.deepPurple[100],
        elevation: 5,
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                result = "";
              });
            },
            icon: const Icon(Icons.settings),
          ),
        ],
      ),
      drawer: const Drawe(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                children: [
                  radioButton("Male", Colors.blue, 0),
                  radioButton("Female", Colors.pink, 1),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Please Enter Your height in CM: ",
                style: GoogleFonts.lobster(
                  color: Colors.deepPurple[500],
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                controller: heightController,
                decoration: InputDecoration(
                  hintText: "Your Height in CM",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  hintStyle: GoogleFonts.aBeeZee(),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Please Enter Your Weight in Kg: ",
                style: GoogleFonts.lobster(
                  color: Colors.deepPurple[500],
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                keyboardType: TextInputType.number,
                controller: weightController,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintText: "Your Weight in KG",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  hintStyle: GoogleFonts.aBeeZee(),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                child: Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.pink[300],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      "Calculate",
                      style: GoogleFonts.lobster(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                onTap: () {
                  if (heightController.value.text.toString().isEmpty ||
                      weightController.value.text.toString().isEmpty) {
                    Fluttertoast.showToast(
                      msg: "Please Enter Your height & Weight Correctly",
                      toastLength: Toast.LENGTH_SHORT,
                      timeInSecForIosWeb: 2,
                      gravity: ToastGravity.BOTTOM,
                      backgroundColor: Colors.red,
                      textColor: Colors.white,
                    );
                  } else {
                    setState(() {
                      height = double.parse(heightController.value.text);
                      weight = double.parse(weightController.value.text);
                    });

                    calculateBMI(height, weight);
                  }
                },
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: Text(
                  "Your BMI is: ",
                  style: GoogleFonts.lobster(
                    fontSize: 22,
                    color: Colors.blue[800],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              result.isNotEmpty
                  ? Center(
                      child: Text(
                        "$result Kg/cm^2",
                        style: GoogleFonts.lobster(
                          fontSize: 22,
                          color: Colors.blue[800],
                        ),
                      ),
                    )
                  : Text(""),
            ],
          ),
        ),
      ),
    );
  }

  Widget radioButton(String gender, Color color, int index) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(10),
        child: MaterialButton(
          onPressed: () => changeIndex(index),
          color: currenIndex == index ? color : Colors.grey[200],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Text(
            gender,
            style: GoogleFonts.lobster(
              color: currenIndex == index ? Colors.white : color,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

  void changeIndex(int index) {
    setState(() {
      currenIndex = index;
    });
  }

  void calculateBMI(double height, double wright) {
    double finalResult = wright / (height * height / 10000);
    String bmiResult = finalResult.toStringAsFixed(2);
    setState(() {
      result = bmiResult;
    });
    print(result);
  }
}
