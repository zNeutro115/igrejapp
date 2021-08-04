import 'package:flutter/material.dart';

class LinhaTabela extends StatelessWidget {
  final List<Widget> tabela;
  const LinhaTabela({
    Key? key,
    required this.tabela,
  }) : super(key: key);

  static Widget buildLinhaTabelaTile(String text,
      {Color color = Colors.black}) {
    return Center(
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(color: color, fontWeight: FontWeight.bold),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 4),
      width: 560,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: tabela
            .map((w) => Expanded(
                  flex: 1,
                  child: w,
                ))
            .toList(),
      ),
    );
  }
}

//  const [
//           Expanded(
//             child: Center(
//               child: Text(
//                 'course.name',
//                 style:
//                     TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
//               ),
//             ),
//           ),
//           Expanded(
//             child: Center(
//               child: Text(
//                 'course.teacher',
//                 style:
//                     TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
//               ),
//             ),
//           ),
//           Expanded(
//             child: Center(
//               child: Text(
//                 'Ações',
//                 style:
//                     TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
//               ),
//             ),
//           ),
//         ],