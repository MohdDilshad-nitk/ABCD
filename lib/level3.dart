// import 'dart:ffi';
import 'dart:math';

import 'package:abc_d/score.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_drawing_board/flutter_drawing_board.dart';

class Level3 extends StatefulWidget {
  const Level3({super.key});

  @override
  State<Level3> createState() => _Level3State();
}

class _Level3State extends State<Level3> {
  int index = 0;

  List<String> letters = [];
  final DrawingController _drawingController = DrawingController();

  @override
  void initState() {
    super.initState();
    letters = generateRandomLetters(10);
  }

  List<String> generateRandomLetters(int count) {
    List<String> letters = [];
    final random = Random();
    for (int i = 0; i < count; i++) {
      int asciiValue = random.nextInt(26) +
          65; // generate random ASCII value between 65 and 90
      String letter = String.fromCharCode(asciiValue);
      letters.add(letter);
    }
    return letters;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/level3.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(children: [
          SizedBox(
            height: 35,
          ),
          Row(
            children: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  fixedSize: Size(20, 30),
                  backgroundColor: Color.fromARGB(0, 255, 255, 255),
                ),
                child: Container(),
              ),
            ],
          ),
          SizedBox(
            height: index < 9 ? 25 : 27,
          ),
          Row(
            children: [
              SizedBox(
                width: index < 9 ? 25 : 22,
              ),
              Text(
                (index + 1).toString(),
                style: TextStyle(
                    fontSize: index < 9 ? 28 : 23,
                    color: Color(0xFF1188e4),
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 70,
              ),
              Text(letters[index],
                  style: TextStyle(
                    fontSize: 113,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF1188e4),
                  )),
            ],
          ),
          Flexible(
            flex: 1,
            fit: FlexFit.loose,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(42, 16, 16, 16),
              child: DrawingBoard(
                controller: _drawingController,
                background: Container(
                  width: 400,
                  height: 380,
                  color: Colors.white,
                ),
                showDefaultActions: true,
                showDefaultTools: true,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              SizedBox(width: 70),
              TextButton(
                  onPressed: () {
                    if (index == 9) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ScorePage(
                            score: 8,
                          ),
                        ),
                      );
                    } else {
                      setState(() {
                        _drawingController.clear();
                        index++;
                      });
                      // index++;
                    }
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => ScorePage(
                    //       score: 8,
                    //     ),
                    //   ),
                    // );
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    fixedSize: Size(250, 114),
                    backgroundColor: Color.fromARGB(0, 255, 255, 255),
                  ),
                  child: Container(
                      // color: Colors.amber,
                      )),
            ],
          )
        ]),
      ),
    );
  }
}
