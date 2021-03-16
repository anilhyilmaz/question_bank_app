import 'package:test_project/soru.dart';

class TestVeri {
  int _soruIndex = 0;

  List<Soru> _sorubankasi = [
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
  String getSoruMetni() {
    return _sorubankasi[_soruIndex].soruMetni;
  }

  bool getSoruYaniti() {
    return _sorubankasi[_soruIndex].soruYaniti;
  }

  void sonrakisoru() {
    if (_soruIndex + 1 < _sorubankasi.length) {
      _soruIndex++;
    }
  }

  bool testBittiMi() {
    if (_soruIndex + 1 >= _sorubankasi.length) {
      return true;
    } else {
      return false;
    }
  }

  void testisifirla() {
    _soruIndex = 0;
  }
}
