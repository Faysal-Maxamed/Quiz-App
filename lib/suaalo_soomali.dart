import 'package:flutter/material.dart';
import 'package:quiz_application/result_screen.dart';
import 'package:quiz_application/theme.dart';

class Guudscreen extends StatefulWidget {
  const Guudscreen({super.key});

  @override
  State<Guudscreen> createState() => _GuudscreenState();
}

class _GuudscreenState extends State<Guudscreen> {
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
          "Suaalo Guud",
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
                    QuestionGuud[QuestionGuudIndex].GuudName!,
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
                        final iscorrect =
                            QuestionGuud[QuestionGuudIndex].GuudAnswer!;
                        if (iscorrect == true)
                          wrightQuestion += 1;
                        else {
                          wrongQuestion += 1;
                        }

                        setState(() {
                          if (QuestionGuudIndex < QuestionGuud.length - 1)
                            QuestionGuudIndex++;
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
                        final isfalse =
                            QuestionGuud[QuestionGuudIndex].GuudAnswer!;
                        if (isfalse == false)
                          wrightQuestion += 1;
                        else {
                          wrongQuestion += 1;
                        }
                        setState(() {
                          if (QuestionGuudIndex < QuestionGuud.length - 1)
                            QuestionGuudIndex++;
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

class Guud {
  String? GuudName;
  bool? GuudAnswer;
  Guud(String q, bool a) {
    GuudName = q;
    GuudAnswer = a;
  }
}

int wrightQuestion = 0;
int wrongQuestion = 0;
int QuestionGuudIndex = 0;
List<Guud> QuestionGuud = [
  Guud(
      "Soomaaliya waxay xorriyadeeda ka qaadatay Talyaaniga iyo Ingiriiska 1960.",
      true),
  Guud("Magaalada Muqdisho waa caasimadda Soomaaliya.", true),
  Guud("Soomaaliya waa waddanka ugu dheer xeebta Afrika.", true),
  Guud("Dalka Soomaaliya wuxuu ka koobanyahay afar gobol oo keliya.", false),
  Guud("Afka rasmiga ah ee Soomaaliya waa Af-Soomaali iyo Carabi.", true),
  Guud(
      "Ciyaarta dhaqanka ee hidaha iyo dhaqanka Soomaalida waxaa ka mid ah ciyaarta gobannimada loo dabaaldego, oo la yiraahdo 'Buraanbur'.",
      true),
  Guud("Soomaaliya waxay xorriyaddeeda qaadatay 1-da Luulyo 1960.", true),
  Guud("Jasiiradda Suqadara waa jasiirad ku taal Soomaaliya.", false),
  Guud(
      "Calanka Soomaaliya wuxuu leeyahay shan xidigood oo midabkoodu yahay buluug khafiif ah.",
      true),
  Guud(
      "Soomaaliya waxay ka mid ahayd dalalka gumaystayaasha reer Yurub qabsadeen xilligii gumaysiga.",
      true),
  Guud(
      "Maxamed Siyaad Barre wuxuu ahaa madaxweynihii ugu horreeyay Soomaaliya markii ay xornimada qaadatay.",
      false),
  Guud("Gobolka Banaadir waa gobolka ugu weyn Soomaaliya.", false),
  Guud(
      "Dhaqanka Soomaalida wuxuu ku salaysan yahay reer guuraaga iyo xoolo dhaqashada.",
      true),
  Guud("Heesta calanka Soomaaliya waxaa lagu magacaabaa 'Soomaaliyeey Toosoo'.",
      true),
  Guud(
      "Dhulka Soomaaliya wuxuu leeyahay cimilo kuleyl ah oo qaybo ka mid ah waa lama degaan baaxad weyn.",
      true),
  Guud("Magaalada Hargeysa waa caasimadda Soomaaliya.", false),
  Guud(
      "Dagaalkii labaad ee aduunka kadib, Soomaaliya waxay ahayd dal ka tirsan Talyaaniga oo la hoos geeyay Qaramada Midoobay.",
      true),
  Guud(
      "Dhaqanka Soomaalida waxaa ku jira ciyaaro dhaqameedyo sida 'Saar' iyo 'Dhaanto'.",
      true),
  Guud(
      "Buugga caanka ah ee uu qoray Cabdullaahi Yuusuf waxaa lagu magacaabaa 'Miyiga iyo Magaalada'.",
      false),
  Guud(
      "Xadka u dhexeeya Soomaaliya iyo Itoobiya wuxuu leeyahay buuraha ugu dheer geeska Afrika.",
      false),
  Guud(
      "Soomaaliya waxay leedahay kayd saliid iyo gaas dabiici ah oo badan, laakiin weli lama soo saarin si buuxda.",
      true),
  Guud("Waxbarashada Soomaaliya waxaa inta badan lagu dhigtaa af Ingiriisi.",
      false),
  Guud(
      "1-da Luulyo waa maalin qaran oo loo dabaaldego maalinta xornimada Soomaaliya.",
      true),
  Guud(
      "Gabayada iyo suugaanta Soomaalida waxay leeyihiin muhiimad weyn oo taariikhi ah.",
      true),
  Guud(
      "Soomaaliya waa waddan hodan ku ah xoolaha sida geelka, ariga, iyo lo’da.",
      true),
  Guud("Gobolka Puntland wuxuu ku yaallaa koonfurta Soomaaliya.", false),
  Guud("Heesta calanka Soomaaliya waxaa curiyey Cabdullaahi Qarshe.", true),
  Guud(
      "Cuntooyinka dhaqanka Soomaalida waxaa ka mid ah canjeero iyo hilib ari.",
      true),
  Guud(
      "Magaalada Kismaayo waa magaalo xeebeed muhiim ah oo ku taal koonfurta Soomaaliya.",
      true),
  Guud("Xadka Soomaaliya iyo Kenya wuxuu ku yaal koonfurta Soomaaliya.", true),
];
