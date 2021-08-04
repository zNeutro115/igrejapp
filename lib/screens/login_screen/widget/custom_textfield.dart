import 'package:flutter/material.dart';

class CustomTextFieldLogin extends StatelessWidget {
  final String text;
  const CustomTextFieldLogin({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            text,
            style: const TextStyle(fontSize: 16),
          ),
        ),
        const SizedBox(height: 4),
        TextField(
          obscureText: true,
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            labelText: text,
          ),
        )
      ],
    );
  }
}
