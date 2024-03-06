import 'package:abc_d/score.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AlphabetsDetails1 extends StatelessWidget {
  AlphabetsDetails1({Key? key, required this.alphabet}) : super(key: key);
  final String alphabet;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // foregroundColor: Colors.white,
        backgroundColor: Color(0xFF7c5cd1),
        // toolbarHeight: 70,
        // titleSpacing: 20, // Add padding from top to the title
        title: Text(
          alphabet,
          style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                fontWeight: FontWeight.w500,
                color: Colors.white,
                fontSize: 25,
              ),
        ),
      ),
      body: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/level1_level2.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              SizedBox(
                height: 80,
              ),
              // SizedBox(height: 20),
              Container(
                width: 300,
                height: 400,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    alphabet,
                    style: TextStyle(
                        fontSize: 150,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF1188e4)),
                  ),
                ),
              ),
              SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
                  // Add your submit button logic here
                  //match score
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ScorePage(
                        score: 8,
                      ),
                    ),
                  );
                },
                child: Text('Submit',
                    style: TextStyle(
                        fontSize: 20,
                        color: Color(0xFF1188e4),
                        fontWeight: FontWeight.bold)),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  fixedSize: Size(200, 50),
                  backgroundColor: Colors.white,
                ),
              ),
            ],
          )),
    );
  }
}
