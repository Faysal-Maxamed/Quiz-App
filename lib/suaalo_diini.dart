import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quiz_application/result_screen.dart';
import 'package:quiz_application/theme.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  int QuestionIndex = 0;
  int correctAnswer = 0;
  int falsesAnswer = 0;
  int percentage = 100;

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
          "Suaalo Diini",
          style: TextStyle(color: Colors.white, fontSize: 26),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 120,
              ),
              Text(
                "Quiz : 30",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
              const SizedBox(
                height: 3,
              ),
              Container(
                color: Colors.black,
                height: 1,
                width: double.infinity,
              ),
              const SizedBox(
                height: 50,
              ),
              const SizedBox(
                height: 80,
              ),
              Card(
                color: secondback,
                elevation: 16,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 40),
                  child: SelectableText(
                    textAlign: TextAlign.center,
                    Questions[QuestionIndex].questionName!,
                    style: const TextStyle(
                        color: Colors.white, letterSpacing: 2.0, fontSize: 20),
                  ),
                ),
              ),
              const SizedBox(
                height: 120,
              ),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        final percentage = correctAnswer + falsesAnswer;
                        final per = percentage / 100;
                        final iscorrect =
                            Questions[QuestionIndex].QuestionAnswer!;
                        if (iscorrect == true) {
                          setState(() {
                            if (correctAnswer < Questions.length - 1) {
                              correctAnswer += 1;
                            }
                          });
                        } else {
                          setState(() {
                            if (falsesAnswer < Questions.length - 1) {
                              falsesAnswer += 1;
                            }
                          });
                        }
                        setState(
                          () {
                            if (QuestionIndex < Questions.length - 1) {
                              QuestionIndex++;
                            } else {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ResultScreen(
                                    TrueAnswer: correctAnswer,
                                    FalsesAsnwer: falsesAnswer,
                                    percentages: per,
                                  ),
                                ),
                              );
                            }
                          },
                        );
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green[800],
                          padding: const EdgeInsets.symmetric(vertical: 15)),
                      child: const Text(
                        "True",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        final percentage = correctAnswer + falsesAnswer;
                        final per = percentage / 100;
                        final isfalse =
                            Questions[QuestionIndex].QuestionAnswer!;
                        if (isfalse == false) {
                          print("Waa saxday");
                          setState(() {
                            if (correctAnswer < Questions.length - 1) {
                              correctAnswer += 1;
                            }
                          });
                        } else {
                          print("Waa qaladay");
                          if (falsesAnswer < Questions.length - 1) {
                            falsesAnswer += 1;
                          }
                        }

                        setState(() {
                          if (QuestionIndex < Questions.length - 1) {
                            QuestionIndex++;
                          } else {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ResultScreen(
                                  TrueAnswer: correctAnswer,
                                  FalsesAsnwer: falsesAnswer,
                                  percentages: per,
                                ),
                              ),
                            );
                          }
                        });
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red[800],
                          padding: const EdgeInsets.symmetric(vertical: 15)),
                      child: const Text(
                        "False",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class diiniQuestion {
  String? questionName;
  bool? QuestionAnswer;
  diiniQuestion(String q, bool a) {
    questionName = q;
    QuestionAnswer = a;
  }
}

List<diiniQuestion> Questions = [
  diiniQuestion(
      "La'aanta tawxiidku waxay sababaysaa in qofku galo shirk.", true),
  diiniQuestion(
      "Waa suurtagal in Salaadda Fajarka la tukado saddex rakcadood.", false),
  diiniQuestion("Nabi Maxamed (NNKH) wuxuu ku dhashay magaalada Maka.", true),
  diiniQuestion("Zakaada waa mid ka mid ah tiirarka Islaamka.", true),
  diiniQuestion(
      "Quraanka Kariimka ah waxaa loo soo dejiyay afar bilood gudaheed.",
      false),
  diiniQuestion(
      "Inaad soonto bisha Ramadaan waa waajib saaran dhammaan dadka Muslimiinta ah.",
      true),
  diiniQuestion(
      "Xajku waa waajib kaliya dadka awoodi kara safarka iyo kharashaadka.",
      true),
  diiniQuestion("Salaadda Labaad ee maalinta waa Salaadda Duhur.", true),
  diiniQuestion(
      "Malaayiinta iyo Malaa'igta waxay joogaan qiyaamaha, balse ma tukadaan.",
      false),
  diiniQuestion("Sadaqada waa waajib sida Zakaada.", false),
  diiniQuestion(
      "Nabiga (NNKH) wuxuu geeriyooday sanadkii 11-aad ee Hijriyada.", true),
  diiniQuestion(
      "Afarta Imaam ee waaweyn waa Abu Xaniifa, Maalik, Shaafici, iyo Axmed.",
      true),
  diiniQuestion("Inaad wax akhrido xilliga Salaadda Fajarka waa sunno.", true),
  diiniQuestion(
      "Dadka aan Muslimka ahayn waxaa u bannaan in ay tukadaan salaadda Islaamka.",
      false),
  diiniQuestion(
      "Kibirka waa mid ka mid ah dembiyada waaweyn ee diinta Islaamka lagu sheegay.",
      true),
  diiniQuestion(
      "Salaadda Tarawixda waxaa la tukadaa kaddib salaadda Isha.", true),
  diiniQuestion(
      "Maalinta Qiyaamaha, qof walba wuxuu ka xisaabtamayaa camalkiisa.", true),
  diiniQuestion(
      "Inaad ku tukato masjidka Kaaba waa mid ka mid ah sunnada Xajka.", true),
  diiniQuestion("Maalinta Jimcaha, khudbada waxaa jeediya Imaamka.", true),
  diiniQuestion("Quraanka waxaa lagu hayaa xafidkiisa oo kaliya.", false),
  diiniQuestion(
      "Waqtiga Salaadda Asr, waqtiga dheeriga ah ayaa la tukadaa.", true),
  diiniQuestion("Bisha Shawaal waa bisha kaddib Ramadaan.", true),
  diiniQuestion(
      "Axdiga Quraanka waxaa ka mid ah waxyaabaha faraha badan.", false),
  diiniQuestion(
      "Dadka ku dhinta Jihada waxaa la gartaa in ay yihiin shuhadaa.", true),
  diiniQuestion(
      "Akhlaaqda wanaagsan waa qayb muhiim ah oo ka mid ah diinta Islaamka.",
      true),
  diiniQuestion(
      "Hadallada wanaagsan waxay ka mid yihiin sunnada Nabi Maxamed (NNKH).",
      true),
  diiniQuestion("Nabiga (NNKH) wuxuu ku dhashay sanadkii 570 milaadiga.", true),
  diiniQuestion(
      "Inaad akhrido Quraanka oo si fiican u fahanto waa waajib.", true),
  diiniQuestion("Zakaada waxaa lagu bixiyaa hantida sanadlaha ah.", true),
  diiniQuestion(
      "Malaaiigta waxay qaabilsantahay qorista camalada wanaagsan iyo xun.",
      true),
];
