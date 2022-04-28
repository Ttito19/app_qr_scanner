import 'package:app_qr_scanner/pages/home_page.dart';
import 'package:app_qr_scanner/pages/mapa_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        initialRoute: 'home',
        routes: {
          'home': (_) => HomePage(),
          'mapa': (_) => MapaPage(),
        });
  }
}
