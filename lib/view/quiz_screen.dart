// comando STF criou isso
import 'package:flutter/material.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  List<Widget> iconScore = [];
  List<String> questions = [
    "Dark Souls é o melhor jogo?",
    "Vendrick é o vilão de Dark Souls 2?",
    "Solaire é o melhor NPC de Dark Souls?"
    //e por aki adiciono mais perguntas
  ];
  int currentQuestionIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Center(
              child: Text(
                questions[currentQuestionIndex],
                style: TextStyle(color: Colors.white, fontSize: 24.0), textAlign: TextAlign.center,
              ),
            ),
          ),
          // *** BOTAO TRUE ***
          Padding(
            padding: EdgeInsets.all(16.0),
            child: TextButton(
              onPressed: () {
                setState(() {
                  if (iconScore.length <= 15) {
                    iconScore.add(Icon(
                      Icons.check,
                      color: Colors.green,
                    ));
                  }
                  nextQuestion();
                });
              },
              child: Text(
                "True",
                style: TextStyle(color: Colors.white, fontSize: 21.0),
              ),
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.green),
                  fixedSize: MaterialStateProperty.all<Size>(Size(400, 70))),
            ),
          ),
          // *** BOTAO FALSE ***
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextButton(
              onPressed: () {
                setState(() {
                  if (iconScore.length <= 15) {
                    iconScore.add(Icon(
                      Icons.cancel,
                      color: Colors.red,
                    ));
                  }
                  nextQuestion();
                });
              },
              child: Text(
                "False",
                style: TextStyle(color: Colors.white, fontSize: 21.0),
              ),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                  fixedSize: MaterialStateProperty.all<Size>(Size(400, 70))),
            ),
          ),
          // *** ICONS ***
          Row(
            children: iconScore,
          )
        ],
      ),
      backgroundColor: Colors.black,
    );
  }

  void nextQuestion() {
    if (currentQuestionIndex < questions.length - 1) {
      setState(() {
        currentQuestionIndex++;
      });
    } else {
      questions.add("Game Finalizado 😁✌️");
      setState(() {
        currentQuestionIndex++;
      });
    }
  }
}
