import 'package:flutter/material.dart';
import 'package:test_project/test_veri.dart';
import 'constant.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> secimler = [];
  TestVeri test_1 = TestVeri();
  void butonFonksiyonu(bool secilenButon) {
    if (test_1.testBittiMi() == true) {
      //alert dialog
      showDialog(
        context: context,
        builder: (BuildContext context) {
          // return object of type Dialog
          return AlertDialog(
            title: new Text("Test Bitmiştir"),
            actions: <Widget>[
              // usually buttons at the bottom of the dialog
              new FlatButton(
                  onPressed: () {
                    setState(() {
                      test_1.testisifirla();
                      secimler = [];
                    });
                    Navigator.of(context).pop();
                  },
                  child: new Text('Başa Dön')),
            ],
          );
        },
      );
    } else {
      setState(() {
        test_1.getSoruYaniti() == secilenButon
            ? secimler.add(dogruiconu)
            : secimler.add(yanlisiconu);
        test_1.sonrakisoru();
      });
    }
  }

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
                    test_1.getSoruMetni(),
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
                                  butonFonksiyonu(false);
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
                                  butonFonksiyonu(true);
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
