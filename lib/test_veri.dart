import 'package:test_project/soru.dart';

class TestVeri {
  int _soru_index = 0;

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
    if (_soru_index < 5) {
      return _sorubankasi[_soru_index].soruMetni;
    } else {
      _soru_index = 0;
      return _sorubankasi[_soru_index].soruMetni;
    }
  }

  bool getSoruYaniti() {
    return _sorubankasi[_soru_index].soruYaniti;
  }

  void sonrakisoru() {
    if (_soru_index < _sorubankasi.length - 1) {
      _soru_index++;
    }
  }
}
