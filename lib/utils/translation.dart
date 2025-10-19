import 'package:get/get.dart';

class MyTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'title': 'Flutter Demo Translation',
          'body': 'You have pushed the button this many times:',
        },
        'id_ID': {
          'title': 'Halaman Utama',
          'body': 'Anda telah menekan tombol sebanyak ini:',
        },
      };
}