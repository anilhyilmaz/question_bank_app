import 'package:flutter/material.dart';
import 'constant.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> secimler = [];

  List<Soru> sorubankasi = [
    Soru(
        soruMetni: 'Titanic gelmiş geçmiş en büyük gemidir', soruYaniti: false),
    Soru(
        soruMetni: 'Dünyadaki tavuk sayısı insan sayısından fazladır',
        soruYaniti: true),
    Soru(soruMetni: 'Kelebeklerin ömrü bir gündür', soruYaniti: false),
    Soru(soruMetni: 'Dünya düzdür', soruYaniti: false),
    Soru(
        soruMetni: 'Kaju fıstığı aslında bir meyvenin sapıdır',
        soruYaniti: true),
    Soru(
        soruMetni: 'Kaju fıstığı aslında bir meyvenin sapıdır',
        soruYaniti: true),
    Soru(
        soruMetni: 'Fatih Sultan Mehmet hiç patates yememiştir',
        soruYaniti: true)
  ];

  int soru_index = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue[900],
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                  flex: 5,
                  child: Center(
                      child: Text(
                    sorular[soru_index],
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ))),
              Wrap(
                spacing: 3,
                runSpacing: 3,
                children: secimler,
              ),
              Expanded(
                flex: 1,
                child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 6.0),
                    child: Row(children: <Widget>[
                      Expanded(
                          child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 6),
                              child: RaisedButton(
                                padding: EdgeInsets.all(12),
                                textColor: Colors.white,
                                color: Colors.red[400],
                                child: Icon(
                                  Icons.thumb_down,
                                  size: 30.0,
                                ),
                                onPressed: () {
                                  setState(() {
                                    cevaplar[soru_index] == false
                                        ? secimler.add(dogruiconu)
                                        : secimler.add(yanlisiconu);
                                    soru_index++;
                                  });
                                },
                              ))),
                      Expanded(
                          child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 6),
                              child: RaisedButton(
                                padding: EdgeInsets.all(12),
                                textColor: Colors.white,
                                color: Colors.green[400],
                                child: Icon(Icons.thumb_up, size: 30.0),
                                onPressed: () {
                                  setState(() {
                                    cevaplar[soru_index] == true
                                        ? secimler.add(dogruiconu)
                                        : secimler.add(yanlisiconu);
                                    soru_index++;
                                  });
                                },
                              ))),
                    ])),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Soru {
  String soruMetni;
  bool soruYaniti;

  Soru({@required this.soruMetni, @required this.soruYaniti});
}
