import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:igrejaapp/communs/base/base_container.dart';
import 'package:igrejaapp/communs/page_switcher.dart';
import 'package:igrejaapp/screens/ensino_tab/widget/cursos_row_widget.dart';

class CursosScreen extends StatelessWidget {
  const CursosScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseContainer(
      headlerText: 'Cursos',
      widget: [
        const SizedBox(height: 16),
        const SizedBox(height: 8),
        Container(
          margin: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8),
                topRight: Radius.circular(8),
                bottomLeft: Radius.circular(8),
                bottomRight: Radius.circular(8)),
          ),
          height: MediaQuery.of(context).size.height * 0.8,
          width: double.maxFinite,
          child: Column(
            children: [
              const SizedBox(height: 8),
              Align(
                alignment: Alignment.centerRight,
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    margin: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.blueAccent),
                    ),
                    child: const Text(
                      'Novo',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ),
              ),
              const Divider(height: 8),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: SizedBox(
                  width: 380,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          Expanded(
                            child: Center(
                              child: Text(
                                'course.name',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Center(
                              child: Text(
                                'course.categorie',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Center(
                              child: Text(
                                'Ações',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Divider(height: 8, endIndent: 16, indent: 16),
                      const CursosRow(text1: '44444444444444', text2: 'Geral'),
                      const CursosRow(
                          text1: '7777777777777777777', text2: 'Seminário'),
                      const SizedBox(height: 8),
                      const SizedBox(height: 8),
                    ],
                  ),
                ),
              ),
              const PageSwitcher(),
            ],
          ),
        ),
      ],
    );
  }
}
