import 'package:flutter/material.dart';

class DizimistaWidget extends StatelessWidget {
  final String text;
  final double cost;

  const DizimistaWidget({
    required this.text,
    required this.cost,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          text,
          style: const TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          cost.toStringAsFixed(2),
          style: const TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: const Color.fromARGB(255, 4, 125, 141),
            ),
            onPressed: () {},
            child: const Center(
              child: Text(
                'Ver Mais',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        const Divider(height: 8),
      ],
    );
  }
}
