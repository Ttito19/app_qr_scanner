import 'package:app_qr_scanner/providers/ui.provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final iuProvider = Provider.of<UiProvider>(context);

    final currentIndex = iuProvider.selectedMenuOpt;
    return BottomNavigationBar(
      onTap: (int i) => iuProvider.selectedMenuOpt = i,
      currentIndex: currentIndex, //controla lo seleccionado
      elevation: 0, //quitar la raya
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.map), label: "Mapa"),
        BottomNavigationBarItem(
            icon: Icon(Icons.compass_calibration), label: "Direcciones"),
      ],
    );
  }
}
