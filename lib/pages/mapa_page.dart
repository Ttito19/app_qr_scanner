import 'package:app_qr_scanner/providers/db_provider.dart';
import 'package:flutter/material.dart';

class MapaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ScanModel scan =
        ModalRoute.of(context)!.settings.arguments as ScanModel;

    return Scaffold(
      appBar: AppBar(title: Text("Mapa")),
      body: Center(
        child: Text(scan.valor),
      ),
    );
  }
}
