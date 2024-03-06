import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ScorePage extends StatelessWidget {
  const ScorePage({super.key, required this.score});
  final int score;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/score.png"),
            fit: BoxFit.cover,
          ),
        ),
        width: double.infinity,
        child: Column(children: [
          SizedBox(
            height: 220,
          ),
          Row(
            children: [
              SizedBox(
                width: 50,
              ),
              Text(
                score.toString(),
                style: TextStyle(
                  fontSize: 105,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF033760),
                ),
              ),
            ],
          ),
          SizedBox(height: 245),
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                // fixedSize: Size(200, 50),
                backgroundColor: Colors.transparent,
              ),
              child: Container(
                height: 64,
                width: 225,
                // color: Colors.transparent,
              ))
        ]),
      ),
    );
  }
}
