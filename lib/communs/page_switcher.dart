import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageSwitcher extends StatelessWidget {
  const PageSwitcher({Key? key}) : super(key: key);

  Widget buildSwitchIcon(String icon, bool isLeft) {
    return InkWell(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: isLeft
              ? const BorderRadius.only(
                  topLeft: Radius.circular(8), bottomLeft: Radius.circular(8))
              : const BorderRadius.only(
                  topRight: Radius.circular(8),
                  bottomRight: Radius.circular(8),
                ),
        ),
        padding: const EdgeInsets.all(4),
        child: Center(
          child: Image.asset(
            icon,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Spacer(),
        const Expanded(
          child: Text(
            '1 to 2 of 2',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        Expanded(
          child: SizedBox(
            height: 25,
            width: 80,
            child: Row(
              children: [
                Expanded(child: buildSwitchIcon('assets/left_arrow.png', true)),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.blue[200],
                      border: Border.all(color: Colors.blueAccent),
                    ),
                    child: const Center(
                      child: Text(
                        '1',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                    child: buildSwitchIcon('assets/right_arrow.png', false)),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
