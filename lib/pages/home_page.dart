import 'package:app_qr_scanner/pages/direcciones_page.dart';
import 'package:app_qr_scanner/pages/mapas_page.dart';
import 'package:app_qr_scanner/providers/ui.provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../widgets/custom_NavigatorBar.dart';
import '../widgets/scan_button.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0, title: Text("Historial"), actions: [
        IconButton(onPressed: () {}, icon: Icon(Icons.delete_forever))
      ]),
      body: Center(
        child: _HomePageBody(),
      ),
      bottomNavigationBar: CustomNavigationBar(),
      floatingActionButton: ScanButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class _HomePageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
//obtener el selected menu opt
    final iuProvider = Provider.of<UiProvider>(context);

    //cambiar para mostrar la página respectiva
    final currentIndex = iuProvider.selectedMenuOpt;
    switch (currentIndex) {
      case 0:
        return MapasPage();
      case 1:
        return DireccionesPage();
      default:
        return MapasPage();
    }
  }
}
