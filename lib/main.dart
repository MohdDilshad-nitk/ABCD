import 'package:flutter/material.dart';
import 'alphabets.dart';
import 'level3.dart';
import 'level4.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ABC D',
      theme: ThemeData(
        primarySwatch: Colors.green, // Set the primary color swatch
        appBarTheme: const AppBarTheme(
          color: Color(0xFF6DA71D), // Set the app bar color
          elevation: 0, // Remove the shadow of the app bar
        ),
      ),
      home: MyHomePage(title: 'Levels'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;
  final navigation = [
    Alphabets(key: UniqueKey(), title: '1'),
    Alphabets(key: UniqueKey(), title: '2'),
    const Level3(),
    const Level4()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        titleSpacing: 20, // Add padding from top to the title
        title: Text(
          title,
          style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                fontWeight: FontWeight.w500,
                color: Colors.white,
                fontSize: 45,
              ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/levels.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: GridView.count(
            crossAxisCount: 2,
            padding: const EdgeInsets.all(16),
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
            children: List.generate(4, (index) {
              return GestureDetector(
                onTap: () {
                  // Navigate to other page
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => navigation[index],
                    ),
                  );
                },
                child: Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                    side: const BorderSide(
                      color: Colors.black,
                      width: 1,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      textAlign: TextAlign.center,
                      'Level \n${index + 1}',
                      style: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF6DA71D),
                      ),
                    ),
                  ),
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}
