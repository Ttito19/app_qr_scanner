import 'package:app_qr_scanner/models/scan_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

launchUrlMethod(BuildContext context, ScanModel scan) async {
  final url = Uri.parse(scan.valor);
  if (scan.tipo == "http") {
    if (!await launchUrl(url)) throw 'Could not launch $url';
  } else {
    Navigator.pushNamed(context, "mapa", arguments: scan);
  }
}
