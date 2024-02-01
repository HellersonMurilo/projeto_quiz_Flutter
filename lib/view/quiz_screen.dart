// comando STF criou isso
import 'package:flutter/material.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  String name = 'Murilo';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Center(
              child: Text(
                "Dark Souls é o melhor jogo?",
                style: TextStyle(color: Colors.white, fontSize: 24.0),
              ),
            ),
          ),
          // *** BOTAO TRUE ***
          Padding(
            padding: EdgeInsets.all(16.0),
            child: TextButton(
              onPressed: () {},
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
            padding: EdgeInsets.all(16.0),
            child: TextButton(
              onPressed: () {},
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
            children: [
              Icon(
                Icons.check,
                color: Colors.green,
              ),
              Icon(
                Icons.close,
                color: Colors.red,
              ),
              Icon(
                Icons.check,
                color: Colors.green,
              ),
              Icon(
                Icons.close,
                color: Colors.red,
              ),
              Icon(
                Icons.check,
                color: Colors.green,
              ),
              Icon(
                Icons.close,
                color: Colors.red,
              ),
              Icon(
                Icons.check,
                color: Colors.green,
              ),
              Icon(
                Icons.close,
                color: Colors.red,
              ),
              Icon(
                Icons.check,
                color: Colors.green,
              ),
              Icon(
                Icons.close,
                color: Colors.red,
              ),
              Icon(
                Icons.check,
                color: Colors.green,
              ),
              Icon(
                Icons.close,
                color: Colors.red,
              ),
              Icon(
                Icons.check,
                color: Colors.green,
              ),
              Icon(
                Icons.close,
                color: Colors.red,
              ),
              Icon(
                Icons.check,
                color: Colors.green,
              ),
              Icon(
                Icons.close,
                color: Colors.red,
              )
            ],
          )
        ],
      ),
      backgroundColor: Colors.black,
    );
  }
}
