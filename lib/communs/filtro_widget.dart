import 'package:flutter/material.dart';

class FiltroWidget extends StatelessWidget {
  const FiltroWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 8),
      height: 35,
      width: 140,
      child: const TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Filtro',
        ),
      ),
    );
  }
}
