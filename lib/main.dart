import 'package:app_qr_scanner/pages/home_page.dart';
import 'package:app_qr_scanner/pages/mapa_page.dart';
import 'package:app_qr_scanner/providers/scan_list_provider.dart';
import 'package:app_qr_scanner/providers/ui.provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart   ';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => new UiProvider()),
        ChangeNotifierProvider(create: (_) => new ScanListProvider())
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Material App',
          initialRoute: 'home',
          routes: {
            'home': (_) => HomePage(),
            'mapa': (_) => MapaPage(),
          },
          theme: ThemeData(
              primaryColor: Colors.teal,
              floatingActionButtonTheme:
                  FloatingActionButtonThemeData(backgroundColor: Colors.teal))),
    );
  }
}
