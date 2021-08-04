import 'package:flutter/material.dart';

class HeadlerText extends StatelessWidget {
  final String headlerText;
  const HeadlerText({
    Key? key,
    required this.headlerText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const Alignment(-0.95, 0.0),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 8),
        child: Text(
          headlerText,
          style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
