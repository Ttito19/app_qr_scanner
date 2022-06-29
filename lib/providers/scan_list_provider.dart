import 'package:app_qr_scanner/providers/db_provider.dart'; //ScanModel deberia importar de aquí
import 'package:flutter/material.dart';

class ScanListProvider extends ChangeNotifier {
  List<ScanModel> scans = [];
  String tipoSeleccionado = "http";
  nuevoScan(String valor) async {
    final nuevoScan = new ScanModel(valor: valor);
    final id = await DBProvider.db.nuevoScan(nuevoScan);
    //asignar el id de la base de datos
    nuevoScan.id = id;
    if (this.tipoSeleccionado == nuevoScan.tipo) {
      this.scans.add(nuevoScan);
      //notificará al widget que se produjo un cambio
      notifyListeners();
    }
  }
}
