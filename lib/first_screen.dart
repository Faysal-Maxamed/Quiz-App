import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_application/suaalo_diini.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffa9def9),
      appBar: AppBar(
        toolbarHeight: 100,
        centerTitle: true,
        leadingWidth: 55,
        foregroundColor: Colors.white,
        backgroundColor: Color(0xffa9def9),
        flexibleSpace: Container(
            decoration: const BoxDecoration(
              color: Color(0xff15616d),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              ),
              boxShadow: [
                BoxShadow(
                  blurRadius: 30.0,
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Quiz app",
                    style: GoogleFonts.breeSerif(
                        fontSize: 35, color: Colors.white),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.grey,
                    radius: 35,
                    child: Icon(
                      Icons.person_3,
                      size: 35,
                      color: Color(0xffa9def9),
                    ),
                  ),
                ],
              ),
            )),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 25,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 8),
              child: Card(
                color: Colors.amber,
                child: Container(
                  padding: const EdgeInsets.only(
                      left: 40, right: 40, top: 15, bottom: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Column(
                        children: [
                          Text(
                            "Question Count",
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                          Text(
                            "230",
                            style: TextStyle(fontSize: 35, color: Colors.white),
                          ),
                        ],
                      ),
                      Container(
                        width: 1,
                        height: 60,
                        color: Colors.white,
                      ),
                      const Column(
                        children: [
                          Text(
                            "Your Ranking",
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                          Text(
                            "1250",
                            style: TextStyle(fontSize: 30, color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const carContainer(
              tittle: "Suaalo Diini",
              Navigate: QuestionScreen(),
            ),
            const SizedBox(
              height: 15,
            ),
            const carContainer(
              tittle: "Suaalo Soomaali",
              Navigate: null,
            ),
            const SizedBox(
              height: 15,
            ),
            const carContainer(
              tittle: "Suaalo Aqoonguud",
              Navigate: null,
            ),
            const SizedBox(
              height: 15,
            ),
            const carContainer(
              tittle: "Suaalo english",
              Navigate: null,
            ),
          ],
        ),
      ),
    );
  }
}

class text_button extends StatelessWidget {
  const text_button({super.key, required this.icons, required this.label});

  final icons;
  final label;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Row(
        children: [
          Icon(
            icons,
            color: Color(0xffa9def9),
          ),
          SizedBox(
            width: 15,
          ),
          Text(
            label,
            style: TextStyle(fontSize: 19, color: Color(0xffa9def9)),
          )
        ],
      ),
    );
  }
}

class carContainer extends StatelessWidget {
  const carContainer({super.key, required this.tittle, required this.Navigate});
  final Navigate;
  final String tittle;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Navigate));
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8),
        child: Card(
          elevation: 10,
          color: Color(0xff15616d),
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  tittle,
                  style: const TextStyle(fontSize: 22, color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
