import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:igrejaapp/communs/base/base_container.dart';
import 'package:igrejaapp/communs/info_tile_widget.dart';

class PainelScreen extends StatelessWidget {
  const PainelScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseContainer(
      widget: [
        RichText(
          text: const TextSpan(
            style: TextStyle(color: Colors.black),
            children: [
              TextSpan(text: 'Bem vindo '),
              TextSpan(
                text: 'F5 Consultoria!',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        const SizedBox(height: 8),
        const InfoTileWidget(
          color: Colors.yellow,
          text: 'Igrejas',
          icon: Icons.ac_unit,
        ),
        const InfoTileWidget(
          color: Colors.blue,
          text: 'Membros',
          icon: Icons.person,
        ),
        const InfoTileWidget(
          color: Colors.green,
          text: 'Visitantes',
          icon: Icons.cloud_circle,
        ),
        const InfoTileWidget(
          color: Colors.orange,
          text: 'Células',
          icon: Icons.computer,
        ),
      ],
    );
  }
}
