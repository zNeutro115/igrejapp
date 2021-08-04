import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InfoTileWidget extends StatelessWidget {
  final Color color;
  final String mainText;
  final String text;
  final bool doesHasIcon;
  final IconData? icon;

  const InfoTileWidget({
    Key? key,
    required this.text,
    this.mainText = '2',
    this.color = Colors.black,
    this.doesHasIcon = true,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
      height: 80,
      padding: const EdgeInsets.only(left: 16, right: 20),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
      ),
      child: Row(
        mainAxisAlignment: doesHasIcon
            ? MainAxisAlignment.spaceBetween
            : MainAxisAlignment.center,
        children: [
          if (doesHasIcon)
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                color: color,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              child: Icon(icon, size: 32),
            ),
          if (!doesHasIcon) const SizedBox(height: 10),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: doesHasIcon
                ? CrossAxisAlignment.end
                : CrossAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.center,
                child: Text(
                  mainText,
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: color,
                  ),
                ),
              ),
              Text(
                text,
                style: const TextStyle(fontSize: 20, color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
