import 'package:flutter/material.dart';

class EditDeleteWidget extends StatelessWidget {
  const EditDeleteWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Material(
          child: InkWell(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                color: Colors.green[100],
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(5),
                    topRight: Radius.circular(5),
                    bottomLeft: Radius.circular(5),
                    bottomRight: Radius.circular(5)),
              ),
              child: Center(
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.mode_edit,
                      color: Colors.green,
                    )),
              ),
            ),
          ),
        ),
        const SizedBox(width: 4),
        Material(
          child: InkWell(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                color: Colors.red[100],
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(5),
                    topRight: Radius.circular(5),
                    bottomLeft: Radius.circular(5),
                    bottomRight: Radius.circular(5)),
              ),
              child: Center(
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.delete,
                        color: Colors.red,
                      ))),
            ),
          ),
        ),
      ],
    );
  }
}
