import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(body: MainPage()),
    );
  }
}

class MainPage extends StatelessWidget {

  final oynatici = AudioCache();

  void sesOynatici(String ses){
 oynatici.play('$ses.wav');
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: buildTextButton('ridebel',Colors.red[800]),
                  ),
                  Expanded(
                    child: buildTextButton('bongo',Colors.amber)
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child:buildTextButton('clap1',Colors.green)
            ),
                  Expanded(
                    child: buildTextButton('clap2', Colors.blue)
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child:buildTextButton('clap3', Colors.orange)
                  ),
                  Expanded(
                    child: buildTextButton('crash', Colors.deepPurple[800])
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: buildTextButton('how', Colors.pink)
                  ),
                  Expanded(
                    child: buildTextButton('woo', Colors.purple)
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  TextButton buildTextButton(String ses,Color renk) {
    return TextButton(
                    style: TextButton.styleFrom(padding: EdgeInsets.all(8)),
                    onPressed: () {
                      sesOynatici(ses);
                    },
                    child: Container(
                     color: renk,
                    ),
                  );
  }
}
