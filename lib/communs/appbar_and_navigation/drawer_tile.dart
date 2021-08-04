import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class DrawerTile extends StatelessWidget {
  final String text;
  final List<Widget> telas;
  const DrawerTile({
    required this.text,
    required this.telas,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 32),
      padding: const EdgeInsets.only(top: 7, bottom: 7),
      decoration: BoxDecoration(
        color: text == 'Painel' ? const Color(0xff2074ac) : Colors.white,
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: text == 'Painel'
          ? Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                SizedBox(width: 16),
                Icon(Icons.home, color: Colors.white, size: 30),
                SizedBox(width: 12),
                Text(
                  'Painel',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            )
          : ExpandablePanel(
              collapsed: Container(),
              theme: const ExpandableThemeData(
                hasIcon: true,
                iconPadding: EdgeInsets.all(0),
                iconColor: Colors.black,
              ),
              header: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(width: 16),
                  const Icon(Icons.home, color: Colors.black, size: 30),
                  const SizedBox(width: 12),
                  Text(
                    text,
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              expanded: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: telas,
                ),
              ),
            ),
    );
  }
}
// Row(
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               const SizedBox(width: 16),
//               const Icon(Icons.home, color: Colors.white, size: 30),
//               const SizedBox(width: 12),
//               Text(
//                 text,
//                 style: const TextStyle(
//                   fontSize: 22,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.white,
//                 ),
//               ),
//             ],
//           ),