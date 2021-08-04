import 'package:flutter/material.dart';
import 'package:igrejaapp/communs/edit_delete_widget.dart';

class CursosRow extends StatelessWidget {
  final String text1;
  final String text2;
  const CursosRow({
    Key? key,
    required this.text1,
    required this.text2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 2),
      child: Row(
        children: [
          const SizedBox(width: 8),
          Expanded(
            child: Center(
              child: Text(
                text1,
                style: const TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: Text(
                text2,
                style: const TextStyle(color: Colors.black),
              ),
            ),
          ),
          const Expanded(child: EditDeleteWidget()),
        ],
      ),
    );
  }
}
