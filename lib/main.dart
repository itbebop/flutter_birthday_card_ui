import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(children: [
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                  child: Lottie.network('https://lottie.host/87ab5100-3f6e-4315-8a02-f80bc22a0330/bzggHnAmw1.json'),
                ),
                const Column(
                  children: [
                    TextCard(
                      text: 'Happy',
                      color: Colors.lightBlue,
                      fontSize: 70,
                    ),
                    TextCard(
                      text: 'Birthday',
                      color: Colors.blue,
                      fontSize: 80,
                    ),
                    TextCard(
                      text: 'to',
                      color: Colors.lightBlueAccent,
                      fontSize: 48,
                    ),
                    SizedBox(
                        width: 200,
                        height: 200,
                        child: CircleAvatar(
                          //backgroundImage: AssetImage('assets/images/kkong.jpg'),
                          foregroundImage: AssetImage('assets/images/kkong.jpg'),
                        )),
                  ],
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

class TextCard extends StatelessWidget {
  final String text;
  final Color color;
  final double fontSize;
  const TextCard({
    super.key,
    required this.text,
    required this.color,
    required this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.lato(
        textStyle: TextStyle(
          color: color,
          fontSize: fontSize,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
