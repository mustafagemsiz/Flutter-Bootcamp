import 'dart:math';
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
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            centerTitle: true,
            title: const Text(
              'Rastgele Menü 🎲',
              style: TextStyle(color: Colors.black),
            ),
          ),
          body: const YemekListesi(),
        ),
      ),
    );
  }
}

class YemekListesi extends StatefulWidget {
  const YemekListesi({Key? key}) : super(key: key);

  @override
  State<YemekListesi> createState() => _YemekListesiState();
}

class _YemekListesiState extends State<YemekListesi> {
  int tatliNo = 6, corbaNo = 6, yemekNo = 6;

  List<String> corbaAdlari = [
    'Mercimek',
    'Tarhana',
    'Tavuksuyu',
    'Düğün Çorbası',
    'Yoğurtlu Çorba',
    ''
  ];

  List<String> yemekAdlari = [
    'Karnıyarık',
    'Mantı',
    'Kuru Fasulye',
    'İçli Köfte',
    'Izgara Balık',
    ''
  ];

  List<String> tatliAdlari = [
    'Kadayıf',
    'Baklava',
    'Sütlaç',
    'Kazandibi',
    'Dondurma',
    ''
  ];

  void tatliGetir() {
    setState(() {
      tatliNo = Random().nextInt(5) + 1;
    });
  }

  void corbaGetir() {
    setState(() {
      corbaNo = Random().nextInt(5) + 1;
    });
  }

  void yemekGetir() {
    setState(() {
      yemekNo = Random().nextInt(5) + 1;
    });
  }

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
                  onPressed: tatliGetir,
                  child: Image.asset('assets/tatli_$tatliNo.jpg')),
            ),
          ),
          Text(
          tatliAdlari[tatliNo-1]
          ,style: const TextStyle(color: Colors.black),
          ),
          const SizedBox(
            width: 200,
            child: Divider(
              color: Colors.black,
              height: 5,
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
                  onPressed: corbaGetir,
                  child: Image.asset('assets/corba_$corbaNo.jpg')),
            ),
          ),
          Text(
            corbaAdlari[corbaNo - 1],
            style: const TextStyle(color: Colors.black),
          ),
          const SizedBox(
            width: 200,
            child: Divider(
              height: 5,
              color: Colors.black,
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
                  onPressed: yemekGetir,
                  child: Image.asset('assets/yemek_$yemekNo.jpg')),
            ),
          ),
          Text(
            yemekAdlari[yemekNo-1]
          ,style: const TextStyle(color: Colors.black),
          ),
          const SizedBox(
            width: 200,
            child: Divider(
              height: 10,
              color:Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
