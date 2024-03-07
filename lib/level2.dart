import 'package:abc_d/score.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_drawing_board/flutter_drawing_board.dart';

class Level2 extends StatelessWidget {
  const Level2({super.key, required this.alphabet});
  final String alphabet;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/level2.png"),
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
                width: 60,
              ),
              Text(alphabet,
                  style: TextStyle(
                    fontSize: 120,
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
            height: 22,
          ),
          Row(
            children: [
              SizedBox(width: 70),
              TextButton(
                  onPressed: () {
                    // if (index == 9) {
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
                      )),
            ],
          )
        ]),
      ),
    );
  }
}
