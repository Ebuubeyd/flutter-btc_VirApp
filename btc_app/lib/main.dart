import 'package:btc_app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'screens/home_screen/home_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(statusBarBrightness: Brightness.dark),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //material app döndürülmüş Ve uygulama başlatılmış
      title: 'Test', //Test Başlığı verilmiş
      debugShowCheckedModeBanner: false, //Deneme sürümü bandı kapatılmış
      theme: ThemeData(
        //Tema belirlenmiş
        scaffoldBackgroundColor:
            kBackgroundColor, // Scaffold Çerçevesine kBackgroundColor Rengi verilmiş
        textTheme: Theme.of(context).textTheme.apply(
              //Text theması belirlenmiş
              bodyColor:
                  kPrimaryTextColor, //text rengi kPrimaryTextColor olarak ayarlanmış
              fontFamily: 'Onest', //Font ailesi onest seçilmiş
            ),
        iconTheme: const IconThemeData(
            color:
                kPrimaryTextColor), //uygulamna içindeki iconlar ın teması belirlenmiş Const sayesinde değiştirilemez olarak ayarlanıp Renk verilmiş
      ),
      home: HomeScreen(), //HomeScreen Adlı metod çağırılmış.
    );
  }
}
