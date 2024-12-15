import 'package:flutter/material.dart';
import 'package:quiz_application/result_screen.dart';
import 'package:quiz_application/theme.dart';

class Englishscreen extends StatefulWidget {
  const Englishscreen({super.key});

  @override
  State<Englishscreen> createState() => _GuudscreenState();
}

class _GuudscreenState extends State<Englishscreen> {
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
          "Suaalo English",
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
              SelectableText(
                textAlign: TextAlign.center,
                Questionenglishscreen[QuestionenglishIndex].GuudName!,
                style: TextStyle(
                    color: Colors.white, fontSize: 20, letterSpacing: 2.0),
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
                            Questionenglishscreen[QuestionenglishIndex]
                                .GuudAnswer!;
                        if (iscorrect == true)
                          wrightQuestion += 1;
                        else {
                          wrongQuestion += 1;
                        }

                        setState(() {
                          if (QuestionenglishIndex <
                              Questionenglishscreen.length - 1)
                            QuestionenglishIndex++;
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
                            Questionenglishscreen[QuestionenglishIndex]
                                .GuudAnswer!;
                        if (isfalse == false)
                          wrightQuestion += 1;
                        else {
                          wrongQuestion += 1;
                        }
                        setState(() {
                          if (QuestionenglishIndex <
                              Questionenglishscreen.length - 1)
                            QuestionenglishIndex++;
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

class englishscreen {
  String? GuudName;
  bool? GuudAnswer;
  englishscreen(String q, bool a) {
    GuudName = q;
    GuudAnswer = a;
  }
}

int wrightQuestion = 0;
int wrongQuestion = 0;
int QuestionenglishIndex = 0;
List<englishscreen> Questionenglishscreen = [
  englishscreen(
      "The present tense is used to describe actions happening now.", true),
  englishscreen(
      "Past continuous is used to describe an action that was happening at a specific moment in the past.",
      true),
  englishscreen(
      "Present perfect is used when an action has been completed recently.",
      true),
  englishscreen(
      "Future tense is used for actions that occurred in the past.", false),
  englishscreen("The verb 'run' in past tense is 'ran'.", true),
  englishscreen(
      "Present continuous is used to describe ongoing actions in the present.",
      true),
  englishscreen("We use 'was' with plural subjects in the past tense.", false),
  englishscreen("'Had eaten' is an example of past perfect tense.", true),
  englishscreen("'She were running' is grammatically correct.", false),
  englishscreen(
      "Future continuous is used for actions that will be ongoing at a certain time in the future.",
      true),
  englishscreen("The past tense of 'go' is 'goed'.", false),
  englishscreen(
      "'He has been sleeping' is an example of present perfect continuous tense.",
      true),
  englishscreen(
      "In present simple, we add 's' to the verb for third person singular.",
      true),
  englishscreen("Past simple describes actions that are happening now.", false),
  englishscreen(
      "The future tense can use 'will' to describe future actions.", true),
  englishscreen(
      "'She had left before he arrived' is in the past perfect tense.", true),
  englishscreen("'Am is going to the store' is correct grammar.", false),
  englishscreen("Present perfect connects the past with the present.", true),
  englishscreen(
      "We use 'did' with the base form of the verb in past simple questions.",
      true),
  englishscreen(
      "'I will be working' is an example of future continuous tense.", true),
  englishscreen(
      "'Had been working' is a structure used in past perfect continuous tense.",
      true),
  englishscreen(
      "In present continuous, 'is' or 'are' is followed by a verb ending in -ing.",
      true),
  englishscreen("We use 'was' for singular subjects in past continuous.", true),
  englishscreen(
      "'She goes to the park yesterday' is in correct past tense form.", false),
  englishscreen(
      "'I am studying now' is an example of present continuous.", true),
  englishscreen(
      "The sentence 'He has saw the movie' is grammatically correct.", false),
  englishscreen(
      "Future perfect tense is used to describe an action that will be completed before a certain time in the future.",
      true),
  englishscreen(
      "'They have finished their work' is in present perfect tense.", true),
  englishscreen(
      "Past perfect is used to describe the first of two past actions.", true),
  englishscreen(
      "'He were going to the market' is a correct sentence in past continuous.",
      false),
];
