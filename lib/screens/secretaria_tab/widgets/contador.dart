import 'package:flutter/material.dart';

class ContadorWidget extends StatefulWidget {
  const ContadorWidget({Key? key}) : super(key: key);

  @override
  _ContadorWidgetState createState() => _ContadorWidgetState();
}

class _ContadorWidgetState extends State<ContadorWidget> {
  int numero = 10;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 88,
      child: PopupMenuButton<PopupMenuItem>(
          icon: Container(
            // color: Colors.red,
            decoration: BoxDecoration(
              color: Colors.grey[100],
              border: Border.all(color: Colors.grey),
              borderRadius: const BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            child: Row(
              children: [
                const Spacer(flex: 2),
                Text(
                  numero.toString(),
                  style: const TextStyle(
                      fontSize: 22, fontWeight: FontWeight.bold),
                ),
                const SizedBox(width: 2),
                Padding(
                  padding: const EdgeInsets.only(top: 4, bottom: 4),
                  child: Image.asset(
                    'assets/up_down.png',
                    height: 22,
                  ),
                ),
                const Spacer(flex: 1),
              ],
            ),
          ),
          itemBuilder: (BuildContext context) {
            return [
              PopupMenuItem(
                onTap: () {
                  setState(() {
                    numero = 10;
                  });
                },
                child: const Text('10'),
              ),
              PopupMenuItem(
                onTap: () {
                  setState(() {
                    numero = 25;
                  });
                },
                child: const Text('25'),
              ),
              PopupMenuItem(
                onTap: () {
                  setState(() {
                    numero = 50;
                  });
                },
                child: const Text('50'),
              ),
              PopupMenuItem(
                onTap: () {
                  setState(() {
                    numero = 100;
                  });
                },
                child: const Text('100'),
              ),
            ];
          }),
    );
  }
}
