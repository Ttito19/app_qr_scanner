import 'package:app_qr_scanner/providers/scan_list_provider.dart';
import 'package:app_qr_scanner/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:provider/provider.dart';

class ScanButton extends StatelessWidget {
  const ScanButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        elevation: 0,
        child: Icon(Icons.filter_center_focus),
        onPressed: () async {
          // final barcodeScanRes = "https://tacticalstore.pe";
          // final barcodeScanRes = "geo:-11.996875159098115, -76.9959095091301";

          String barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
              "#3D8BEF", "Cancelar", false, ScanMode.QR);
          if (barcodeScanRes == "-1") {
            return;
          }

          final scanListProvider =
              Provider.of<ScanListProvider>(context, listen: false);
          final nuevoScan = await scanListProvider.nuevoScan(barcodeScanRes);
          // scanListProvider.nuevoScan('geo:15.33,15.66');
          launchUrlMethod(context, nuevoScan);
        });
  }
}
