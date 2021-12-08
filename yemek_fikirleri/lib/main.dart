import 'package:flutter/material.dart';

void main() {
  runApp(const BenimUygulamam());
}

class BenimUygulamam extends StatelessWidget {
  const BenimUygulamam({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: const Text(
            'Bugün ne yemek yapsam?',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: const YemekListesi(),
      ),
    );
  }
}

class YemekListesi extends StatelessWidget {
  const YemekListesi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Colors.white,
                  ),
                  onPressed: () {
                    print('Tatlı butonu tıklandı.');
                  },
                  child: Image.asset('assets/tatli_3.jpg')),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    primary: Colors.white,
                  ),
                  onPressed: () {
                    print('Çorba butonu tıklandı.');
                  },
                  child: Image.asset('assets/corba_2.jpg')),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    primary: Colors.white,
                  ),
                  onPressed: () {
                    print('Mantı butonu tıklandı.');
                  },
                  child: Image.asset('assets/yemek_2.jpg')),
            ),
          ),
        ],
      ),
    );
  }
}
