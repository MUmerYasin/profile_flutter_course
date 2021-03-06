import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'selection',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.playfairDisplayTextTheme(
          Theme.of(context).textTheme,),
      ),
      home: const MyHomePage(title: 'PROFILE'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: GoogleFonts.playfairDisplay(
        textStyle: const TextStyle(color: Color(0xff5c5258), ),
      ),
        ),
        elevation:1.0,
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
             Text(
              'You have pushed the button this many times:',
            ),
          ],
        ),
      ),

    );
  }
}
