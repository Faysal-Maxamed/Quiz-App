import 'package:flutter/material.dart';
import 'package:quiz_application/theme.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen(
      {super.key, required this.TrueAnswer, required this.FalsesAsnwer,required this.percentages});

  final TrueAnswer;
  final FalsesAsnwer;
  final percentages;

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundcolor,
      body: Center(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 40),
          height: 450,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Image(
                image: AssetImage("images/con.png"),
                height: 140,
              ),
              const Text(
                "Congrats!",
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              Text(
                "90% Score",
                style: TextStyle(
                    fontSize: 42,
                    color: Colors.green[600],
                    fontWeight: FontWeight.bold),
              ),
              const Text(
                "Quiz completed succsessfully.",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                    color: Colors.black),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "You attemp ",
                    style: TextStyle(
                        fontSize: 17,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "30 Questions ",
                    style: TextStyle(
                        fontSize: 17,
                        color: Colors.blue[700],
                        fontWeight: FontWeight.w600),
                  ),
                  const Text(
                    "and",
                    style: TextStyle(
                        fontSize: 17,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "that  ",
                    style: TextStyle(
                        fontSize: 17,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "${widget.TrueAnswer} answer ",
                    style: TextStyle(
                        fontSize: 17,
                        color: Colors.green[800],
                        fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    "is correct.",
                    style: TextStyle(
                        fontSize: 17,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "and ",
                    style: TextStyle(
                        fontSize: 17,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "${widget.FalsesAsnwer} answer ",
                    style: TextStyle(
                        fontSize: 17,
                        color: Colors.red[800],
                        fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    "is wrong.",
                    style: TextStyle(
                        fontSize: 17,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Do you want to retake the quiz?",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text(
                        "Enter",
                        style: TextStyle(
                            color: backgroundcolor,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
