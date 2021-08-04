import 'package:flutter/material.dart';
import 'package:igrejaapp/communs/base/headler_text.dart';

import '../appbar_and_navigation/custom_app_bar.dart';

class BaseContainer extends StatelessWidget {
  final List<Widget> widget;
  final String? headlerText;

  const BaseContainer({
    Key? key,
    required this.widget,
    this.headlerText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        title: SizedBox(
          height: 45,
          child: Image.asset(
            'assets/connection_logo.png',
            fit: BoxFit.fitHeight,
          ),
        ),
        // elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        // backgroundColor: const Color(0xff2074ac),
      ),
      drawer: const CustomDrawer(),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10)),
            // boxShadow: [
            //   BoxShadow(
            //     color: Colors.grey.withOpacity(0.5),
            //     spreadRadius: 5,
            //     blurRadius: 7,
            //     offset: const Offset(0, 3), // changes position of shadow
            //   ),
            // ],
          ),
          padding: const EdgeInsets.all(8),
          margin: const EdgeInsets.all(16),
          child: Column(
            children: [
              const SizedBox(height: 4),
              if (headlerText != null)
                HeadlerText(
                  headlerText: headlerText!,
                ),
              ...widget,
            ],
          ),
        ),
      ),
    );
  }
}
