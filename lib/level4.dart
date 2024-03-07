import 'package:abc_d/score.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_drawing_board/flutter_drawing_board.dart';

class Level4 extends StatefulWidget {
  const Level4({super.key});

  @override
  State<Level4> createState() => _Level4State();
}

class _Level4State extends State<Level4> {
  String word = "DOG";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/level4.png"),
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
            height: 35,
          ),
          Row(
            children: [
              SizedBox(
                width: 70,
              ),
              Text(word,
                  style: TextStyle(
                    fontSize: 100,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF1188e4),
                  )),
            ],
          ),
          Flexible(
            flex: 1,
            fit: FlexFit.loose,
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: DrawingBoard(
                background: Container(
                  width: 400,
                  height: 380,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  // child: Row(
                  //   children: [
                  //     SizedBox(
                  //       width: 110,
                  //     ),
                  //     Text('alphabet',
                  //         style: TextStyle(
                  //           fontSize: 200,
                  //           fontWeight: FontWeight.bold,
                  //           color: Color(0xFF1188e4),
                  //         )),
                  //   ],
                  // ),
                ),
                showDefaultActions: true,
                showDefaultTools: true,
              ),
            ),
          ),
          SizedBox(
            height: 3,
          ),
          Row(
            children: [
              SizedBox(
                width: 57,
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ScorePage(
                        score: 8,
                      ),
                    ),
                  );
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
                    ),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
