import 'package:app_qr_scanner/models/scan_model.dart';
import 'package:app_qr_scanner/pages/direcciones_page.dart';
import 'package:app_qr_scanner/pages/mapas_page.dart';
import 'package:app_qr_scanner/providers/db_provider.dart';
import 'package:app_qr_scanner/providers/scan_list_provider.dart';
import 'package:app_qr_scanner/providers/ui.provider.dart';
import 'package:app_qr_scanner/widgets/scan_tiles.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../widgets/custom_NavigatorBar.dart';
import '../widgets/scan_button.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0, title: Text("Historial"), actions: [
        IconButton(
            onPressed: () {
              Provider.of<ScanListProvider>(context, listen: false)
                  .borrarTodos();
            },
            icon: Icon(Icons.delete_forever))
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
    //Usar el ScanListProvider
    final scanListProvider =
        Provider.of<ScanListProvider>(context, listen: false);

    switch (currentIndex) {
      case 0:
        scanListProvider.cargarScansPorTipo("geo");

        // return MapasPage();
        /// ScanTiles(tipo: "geo") puede ser asi, o como está en el page de direcciones_page.dart
        return ScanTiles(tipo: "geo");

      case 1:
        scanListProvider.cargarScansPorTipo("http");
        return DireccionesPage();
      default:
        return MapasPage();
    }
  }
}
