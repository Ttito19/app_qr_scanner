import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Historial"), actions: [
        IconButton(onPressed: () {}, icon: Icon(Icons.delete_forever))
      ]),
    );
  }
}
