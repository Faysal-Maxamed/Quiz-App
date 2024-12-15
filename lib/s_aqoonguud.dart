import 'package:flutter/material.dart';
import 'package:quiz_application/result_screen.dart';
import 'package:quiz_application/theme.dart';

class Aqoonguudscreen extends StatefulWidget {
  const Aqoonguudscreen({super.key});

  @override
  State<Aqoonguudscreen> createState() => _AqoonguudscreenState();
}

class _AqoonguudscreenState extends State<Aqoonguudscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundcolor,
      appBar: AppBar(
        foregroundColor: Colors.white,
        elevation: 16,
        shadowColor: secondback,
        backgroundColor: secondback,
        centerTitle: true,
        title: const Text(
          "Suaalo Aqoonguud",
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 100,
              ),
              const Text(
                "Quiz : 30",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              const SizedBox(
                height: 6,
              ),
              Container(
                height: 1,
                width: double.infinity,
                color: Colors.white,
              ),
              const SizedBox(
                height: 50,
              ),
              const SizedBox(
                height: 120,
              ),
              Card(
                color: secondback,
                elevation: 16,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 40),
                  child: SelectableText(
                    textAlign: TextAlign.center,
                    QuestionAqoonguud[QuestionAqoonIndex].QuestionName!,
                    style: const TextStyle(
                        color: Colors.white, letterSpacing: 2.0, fontSize: 20),
                  ),
                ),
              ),
              const SizedBox(
                height: 150,
              ),
              Row(
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        final percentage = wrightQuestion + wrongQuestion;
                        final per = percentage / 100;
                        final iscorrect = QuestionAqoonguud[QuestionAqoonIndex]
                            .QuestionAsnwer!;
                        if (iscorrect == true)
                          wrightQuestion += 1;
                        else {
                          wrongQuestion += 1;
                        }

                        setState(() {
                          if (QuestionAqoonIndex < QuestionAqoonguud.length - 1)
                            QuestionAqoonIndex++;
                          else {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ResultScreen(
                                  TrueAnswer: wrightQuestion,
                                  FalsesAsnwer: wrongQuestion,
                                  percentages: per,
                                ),
                              ),
                            );
                          }
                        });
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.green[800],
                        padding: EdgeInsets.symmetric(vertical: 16),
                      ),
                      child: const Text(
                        "True",
                        style: TextStyle(color: Colors.white, fontSize: 22),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        final percentage = wrightQuestion + wrongQuestion;
                        final per = percentage / 100;
                        final isfalse = QuestionAqoonguud[QuestionAqoonIndex]
                            .QuestionAsnwer!;
                        if (isfalse == false)
                          wrightQuestion += 1;
                        else {
                          wrongQuestion += 1;
                        }
                        setState(() {
                          if (QuestionAqoonIndex < QuestionAqoonguud.length - 1)
                            QuestionAqoonIndex++;
                          else {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ResultScreen(
                                  TrueAnswer: wrightQuestion,
                                  FalsesAsnwer: wrongQuestion,
                                  percentages: per,
                                ),
                              ),
                            );
                          }
                        });
                      },
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.red[800],
                          padding: EdgeInsets.symmetric(vertical: 16)),
                      child: const Text(
                        "False",
                        style: TextStyle(color: Colors.white, fontSize: 22),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class QuestinAqoon {
  String? QuestionName;
  bool? QuestionAsnwer;
  QuestinAqoon(String q, bool a) {
    QuestionName = q;
    QuestionAsnwer = a;
  }
}

int wrightQuestion = 0;
int wrongQuestion = 0;
int QuestionAqoonIndex = 0;
List<QuestinAqoon> QuestionAqoonguud = [
  QuestinAqoon("Qorraxdu waxay kasoo baxdaa dhanka galbeedka.", false),
  QuestinAqoon("Mount Everest waa buurta ugu dheer adduunka.", true),
  QuestinAqoon("Magaalada New York waxay ku taallaa dalka Kanada.", false),
  QuestinAqoon("Biyaha waxay kaliya ku jiraan qaabka dareeraha.", false),
  QuestinAqoon("Dhulka waxaa ka koobanyahay 70% biyo.", true),
  QuestinAqoon("Internetka waxaa la bilaabay 1990-yadii.", false),
  QuestinAqoon("Barafka wuxuu noqdaa biyo marka uu dhalaalo.", true),
  QuestinAqoon("Caalamka wuxuu leeyahay hal dayax.", true),
  QuestinAqoon("Geedaha waxay soo saaraan oksijiin.", true),
  QuestinAqoon("Kaarboon laba ogsaydh waa gaaska aan neefsan karno.", false),
  QuestinAqoon(
      "Dhulka wuxuu leeyahay afar xilliyeed: Jiilaal, Gu', Dayr, iyo Xagaa.",
      true),
  QuestinAqoon("Buugga ugu caansan adduunka waa Quraanka.", true),
  QuestinAqoon("Xiddigaha oo dhan waxay leeyihiin shucaacyo iftiin.", true),
  QuestinAqoon("Shabeelku waa xayawaanka ugu dhaqsaha badan dhulka.", true),
  QuestinAqoon(
      "Dunidu waxay ku wareegtaa qorraxda 24 saacadood gudahood.", false),
  QuestinAqoon(
      "Inaad ku nooshahay meel u dhow badda waxay kordhin kartaa huurka hawada.",
      true),
  QuestinAqoon(
      "Biyaha cusbada leh iyo kuwa macaan isku mid ayay yihiin.", false),
  QuestinAqoon("Nayroobi waa caasimadda dalka Kenya.", true),
  QuestinAqoon(
      "Xiddigaha hawada sare waxay leeyihiin iftiin nooca midabka cadaan ah oo kaliya.",
      false),
  QuestinAqoon("Giraafadu waa xayawaanka ugu dheer dunida.", true),
  QuestinAqoon("Dhulka wuxuu ku wareegaa qorraxda sanadkiiba hal mar.", true),
  QuestinAqoon("Magaalada Tokyo waa caasimadda dalka Japan.", true),
  QuestinAqoon("Biyaha webiga waxay ku baxaan dhul hoose oo badda ah.", true),
  QuestinAqoon("Roobabku waxay u dhacaan sababtoo ah uumiga biyaha.", true),
  QuestinAqoon("Magaalada Addis Ababa waa caasimadda dalka Itoobiya.", true),
  QuestinAqoon(
      "Cimilada kuleylka ah waxay ka jirtaa inta badan meelaha u dhow dhulbaraha.",
      true),
  QuestinAqoon("Buuraha Himalayas waxay ku yaallaan Yurub.", false),
  QuestinAqoon("Xiddiguhu waxay sameeyaan hawo iyo kulayl xad dhaaf ah.", true),
  QuestinAqoon("Dayaxa ayaa ka ifaya qorraxda habeenkii.", true),
  QuestinAqoon("Ogow, Afrika waa qaaradda labaad ee ugu weyn adduunka.", true),
];
