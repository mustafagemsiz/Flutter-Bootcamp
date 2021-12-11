import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MainPage());
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.purple,
        appBar: AppBar(
          backgroundColor: Colors.black12,
          centerTitle: true,
          title: const Text(
            'GÜNÜN FALI',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: BodyApp(),
      ),
    );
  }
}

class BodyApp extends StatefulWidget {
  const BodyApp({Key? key}) : super(key: key);

  @override
  _BodyAppState createState() => _BodyAppState();
}

int yanitIndex = 0;

class _BodyAppState extends State<BodyApp> {
  List<String> yanitlar = [
    'TIKLA FALIN GELSİN',
    'AŞK: Bugün, aşk ve ilişki hayatınızda biraz daha temkinli olmalısın. Onu her konuda doğru anlamda anladığından da emin misin?',
    'AŞK: Aşk ve ilişki hayatınızda hakimiyeti eline almak ve birlikteliğinizi dilediğiniz gibi yönlendirmek isteyebilirsin. Bu isteğinin denge içerisindeki bir ilişkiye ne şekilde fayda edeceğini gözden geçirmelisin.',
    'AŞK: Duygularınızın bugün biraz düzensiz olduğunu görebilirsiniz. Güne, daha önce hiç yapmadığınız bir şekilde başlamanızı sağlayan doğal bir elektrik hissi var. Kalbiniz her zaman doğruyu söyler.',
    'AŞK: Duygularınız çoğu zaman rasyonel düşüncelerinize galip geliyor ve sonunda derinlerde duyguların beslediği bir karmaşa ortaya çıkıyor. Çok da mantıklı düşünerek kalbinizi görmezden gelmeyin. Amacınız bu ikisi arasında dengeyi bulmak.',
    'AŞK: Duygusal olarak kötü hissetmeyin, sezgileriniz güçlü durumda. Sevgilinizin hislerini bu sezgiler ile anlamaya çalışın. Bazen sadece eğlenmek gerekir, siz de rahatlayın ve birlikte eğlenin!',
    'PARA: Kafanıza uzun süredir koyduğunuz bazı harcamalar var, bugün kendinize bunlara gerçekten ne kadar ihtiyacınız olduğunu sorun ve bir kısmını iptal edin. Bugün bir hayır kurumuna küçücük bir bağış yapın, kendinizi çok daha iyi hissedeceksiniz.',
    'PARA: Nakit akışınızın dengesini bozabilecek dönemlere giriyoruz, bu aralar kesinlikle masa başına oturup bir bütçe hesabı yapmalısınız, önümüzdeki 3 ay boyunca gelir gider dengenizden emin olmadan hareket etmeyin',
    'PARA: Bugün, başkalarına yardım, destek ve hizmet duygunuzun yüksek olduğu bir gün olabilir, hayır, bağış işlerinde yer alabilirsiniz.',
    'PARA: Bugün kendinize güveniniz oldukça yüksek, ancak bu size pek fayda getirmeyebilir, bağlantılarınız size verdikleri destekten şüphelenebilirler. Sakin hareket edin, bir adım geri durun, ve paradan çok sağlığınızla ilgilenin.',
    'PARA: Para kaynaklarımız ile ilgili detaylar bu dönem dikkat etmelisiniz. Ayrıca maddi konularda ve harcamalarda uzun süredir sizi meşgul eden bir konuda karara varabilirsiniz, yakınlarınızdan veya eşinizden karar alırken yardım isteyin.',
    'TAVSİYE: Bugün meraklı kişiliğini ön plana çıkartarak insanlara soru sormaktan çekinme ',
    'TAVSİYE: Bugün daha önce hiç fark etmediğin şeylerin hep orada olduğunu fark edebilirsin, sadece biraz daha dikkatli olmaya çalış',
    'TAVSİYE: Bugün ikili ilişkilerinde daha aktif ve verici olmaya çalışabilirsin, aynı fikirde olduğun insanları daha dikkatli dinlemeye ve sorgulamaya başla',
    'TAVSİYE: Bugün sadece işine odaklan, dikkatini dağıtacak her türlü nesne ve sosyal medyadan uzaklaşmak kendini daha mutlu hissettirebilir',
    'TAVSİYE: Bugün tek başına biraz yürüyüş yap, çocukluğunda dinlediğin şarkıları aç ve o zamanlar oynadığın oyunları hayal et'
  ];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const CircleAvatar(
            radius: 70.0,
            backgroundImage: AssetImage('assets/falci.png'),
            backgroundColor: Colors.purple,
          ),
          const SizedBox(height: 15),
          Card(
            margin: const EdgeInsets.symmetric(horizontal: 45.0),
            color: Colors.white,
            child: ListTile(
              leading: const Icon(Icons.favorite, color: Colors.red),
              title: const Text(
                'AŞK DURUMU',
                style: TextStyle(fontSize: 18, color: Colors.red),
              ),
              onTap: () {
                setState(() {
                  yanitIndex = Random().nextInt(5) + 1;
                });
              },
            ),
          ),
          const SizedBox(height: 5),
          Card(
            margin: const EdgeInsets.symmetric(horizontal: 45.0),
            color: Colors.white,
            child: ListTile(
              leading: const Icon(Icons.shopping_cart, color: Colors.green),
              title: const Text(
                'PARA DURUMU',
                style: TextStyle(fontSize: 18, color: Colors.green),
              ),
              onTap: () {
                setState(() {
                  yanitIndex = Random().nextInt(5) + 6;
                });
              },
            ),
          ),
          const SizedBox(height: 5),
          Card(
            margin: const EdgeInsets.symmetric(horizontal: 45.0),
            color: Colors.white,
            child: ListTile(
              leading: const Icon(
                Icons.explore,
                color: Colors.blue,
              ),
              title: const Text(
                'GÜNLÜK TAVSİYE',
                style: TextStyle(color: Colors.blue, fontSize: 18),
              ),
              onTap: () {
                setState(() {
                  yanitIndex = Random().nextInt(5) + 11;
                });
              },
            ),
          ),
          const SizedBox(height: 5),
          Container(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              height: 150,
              width: double.infinity,
              child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                  child: Text(yanitlar[yanitIndex],
                      style: const TextStyle(fontSize: 20, color: Colors.white),
                      textAlign: TextAlign.center))),
        ],
      ),
    );
  }
}
