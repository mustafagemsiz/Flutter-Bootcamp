import 'package:flutter/material.dart';

void main() {
  runApp(Kahve());
}

class Kahve extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //theme: ThemeData(fontFamily: 'Satisfy'),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.brown[300],
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const CircleAvatar(
                  radius: 70.0,
                  backgroundImage: AssetImage('assets/images/kahve.jpg'),
                ),
                Text(
                  'Kahve Uygulaması',
                  style: TextStyle(
                      fontSize: 40,
                      color: Colors.brown[700],
                      fontFamily: 'Satisfy'),
                ),
                Text(
                  '1998 den beri sizlerle.',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.brown[700],
                      fontFamily: 'Satisfy'),
                ),
                Container(
                  width: 200,
                  child: Divider(
                    color: Colors.brown[900],
                    height: 30,
                  ),
                ),
                Card(
                  margin: const EdgeInsets.symmetric(
                      horizontal: 45.0), //yatayda boşluk
                  color: Colors.brown[900],
                  child: const ListTile(
                    leading: Icon(
                      Icons.mail,
                      size: 25,
                      color: Colors.white,
                    ),
                    title: Text(
                      'iletisim@kahve.com',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Card(
                  margin: const EdgeInsets.symmetric(horizontal: 45.0),
                  color: Colors.brown[900],
                  child: const ListTile(
                    leading: Icon(
                      Icons.phone,
                      size: 25,
                      color: Colors.white,
                    ),
                    title: Text(
                      '+90 545 528 98 99',
                      style: TextStyle(color: Colors.white, fontSize: 20),
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
