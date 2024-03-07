import 'package:abc_d/score.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_drawing_board/flutter_drawing_board.dart';

class AlphabetsDetails1 extends StatelessWidget {
  AlphabetsDetails1({Key? key, required this.alphabet}) : super(key: key);
  final String alphabet;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   // foregroundColor: Colors.white,
      //   backgroundColor: Color(0xFF7c5cd1),
      //   // toolbarHeight: 70,
      //   // titleSpacing: 20, // Add padding from top to the title
      //   title: Text(
      //     alphabet,
      //     style: Theme.of(context).textTheme.headlineMedium!.copyWith(
      //           fontWeight: FontWeight.w500,
      //           color: Colors.white,
      //           fontSize: 25,
      //         ),
      //   ),
      // ),
      body: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/level11.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
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
                height: 93,
              ),
              Flexible(
                flex: 1,
                fit: FlexFit.loose,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: DrawingBoard(
                    background: Container(
                      width: 400,
                      height: 380,
                      color: Colors.white,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 110,
                          ),
                          Text(alphabet,
                              style: TextStyle(
                                fontSize: 200,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF1188e4),
                              )),
                        ],
                      ),
                    ),
                    showDefaultActions: true,
                    showDefaultTools: true,
                  ),
                ),
              ),

              // Row(
              //   children: [
              //     SizedBox(
              //       width: 110,
              //     ),
              //     Text(alphabet,
              //         style: TextStyle(
              //           fontSize: 200,
              //           fontWeight: FontWeight.bold,
              //           color: Color(0xFF1188e4),
              //         )),
              //   ],
              // ),
              SizedBox(height: 20),
              Row(
                children: [
                  SizedBox(width: 60),
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
                        fixedSize: Size(250, 124),
                        backgroundColor: Color.fromARGB(0, 255, 255, 255),
                      ),
                      child: Container(
                          // color: Colors.amber,
                          )),
                ],
              )
              // ElevatedButton(
              //   onPressed: () {
              //     // Add your submit button logic here
              //     //match score
              //     Navigator.push(
              //       context,
              //       MaterialPageRoute(
              //         builder: (context) => ScorePage(
              //           score: 8,
              //         ),
              //       ),
              //     );
              //   },
              //   child: Text('Submit',
              //       style: TextStyle(
              //           fontSize: 20,
              //           color: Color(0xFF1188e4),
              //           fontWeight: FontWeight.bold)),
              //   style: ElevatedButton.styleFrom(
              //     shape: RoundedRectangleBorder(
              //       borderRadius: BorderRadius.circular(30),
              //     ),
              //     fixedSize: Size(200, 50),
              //     backgroundColor: Colors.white,
              //   ),
              // ),
            ],
          )),
    );
  }
}
