import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_application/first_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffa9def9),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Offline Quiz App",
              style: GoogleFonts.rubik(fontSize: 30),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => FirstScreen()));
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 70),
                height: 50,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Color(0xff15616d),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: Center(
                    child: Text(
                  "Enter",
                  style: GoogleFonts.rubik(fontSize: 22, color: Colors.white),
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
