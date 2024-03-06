import 'package:flutter/material.dart';
import 'level1.dart';

class Alphabets extends StatelessWidget {
  Alphabets({required Key key, required this.title}) : super(key: key);
  final String title;
  final capitalAlphabets = [
    'A',
    'B',
    'C',
    'D',
    'E',
    'F',
    'G',
    'H',
    'I',
    'J',
    'K',
    'L',
    'M',
    'N',
    'O',
    'P',
    'Q',
    'R',
    'S',
    'T',
    'U',
    'V',
    'W',
    'X',
    'Y',
    'Z'
  ];
  final smallAlphabets = [
    'a',
    'b',
    'c',
    'd',
    'e',
    'f',
    'g',
    'h',
    'i',
    'j',
    'k',
    'l',
    'm',
    'n',
    'o',
    'p',
    'q',
    'r',
    's',
    't',
    'u',
    'v',
    'w',
    'x',
    'y',
    'z'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // foregroundColor: Colors.white,
        backgroundColor: Color(0xFF7c5cd1),
        // toolbarHeight: 70,
        // titleSpacing: 20, // Add padding from top to the title
        title: Text(
          "Level $title",
          style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                fontWeight: FontWeight.w500,
                color: Colors.white,
                fontSize: 25,
              ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/level1_level2.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                // Row(
                //   children: [
                //     IconButton(
                //       iconSize: 30,
                //       icon: Icon(Icons.arrow_back),
                //       color: Colors.white,
                //       onPressed: () {
                //         // Handle back button press
                //         Navigator.pop(context);
                //       },
                //     ),
                //   ],
                // ),
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    "Capital Letters",
                    style: TextStyle(
                      fontSize: 44,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                GridView.count(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  crossAxisCount: 3,
                  padding: EdgeInsets.all(16),
                  children: List.generate(
                    26, // Replace with the desired number of cards
                    (index) => GestureDetector(
                      onTap: () {
                        // Navigate to other page
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AlphabetsDetails1(
                                alphabet: capitalAlphabets[index],
                              ),
                            ));
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                          side: const BorderSide(
                            color: Colors.black,
                            width: 1,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            capitalAlphabets[index],
                            style: const TextStyle(
                              fontSize: 55,
                              fontWeight: FontWeight.w900,
                              color: Color(0xFF4875d6),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    "Small Letters",
                    style: TextStyle(
                      fontSize: 44,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                GridView.count(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  crossAxisCount: 3,
                  padding: EdgeInsets.all(16),
                  children: List.generate(
                    26, // Replace with the desired number of cards
                    (index) => GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AlphabetsDetails1(
                                alphabet: smallAlphabets[index],
                              ),
                            ));
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                          side: const BorderSide(
                            color: Colors.black,
                            width: 1,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            smallAlphabets[index],
                            style: const TextStyle(
                              fontSize: 55,
                              fontWeight: FontWeight.w900,
                              color: Color(0xFF4875d6),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
