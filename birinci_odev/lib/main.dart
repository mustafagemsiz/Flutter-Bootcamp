import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    BenimUyg(),
  );
}

class BenimUyg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                width: 200,
                height: 100,
                color: Colors.white,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.pink,
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.yellow,
                  )
                ],
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.blue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/*
Container(
            width: 200,
            height: 100,
            alignment: Alignment.bottomRight,
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.red,
                borderRadius: BorderRadiusDirectional.circular(10.0)),
            margin: const EdgeInsets.all(40.0),
            padding: const EdgeInsets.all(20.0),
            child: Transform(
              child: const Text("Kod Planet"),
              transform: Matrix4.rotationZ(-0.90),
              alignment: FractionalOffset.center,
            ),
          ), 
*/
