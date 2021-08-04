import 'package:flutter/material.dart';
import 'package:igrejaapp/communs/base/base_container.dart';
import 'package:igrejaapp/screens/secretaria_tab/widgets/linha_tabela.dart';

class ContasScreen extends StatelessWidget {
  const ContasScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseContainer(
      headlerText: 'Contas',
      widget: [
        Container(
          margin: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8),
              topRight: Radius.circular(8),
              bottomLeft: Radius.circular(8),
              bottomRight: Radius.circular(8),
            ),
          ),
          height: MediaQuery.of(context).size.height * 0.8,
          width: double.maxFinite,
          child: Column(
            children: [
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
                child: Column(
                  children: [
                    const SizedBox(height: 8),
                    LinhaTabela(tabela: [
                      LinhaTabela.buildLinhaTabelaTile('AccountsFinances.name'),
                      LinhaTabela.buildLinhaTabelaTile('Ações'),
                    ]),
                    const Divider(height: 8, endIndent: 16, indent: 16),
                    LinhaTabela(
                      tabela: [
                        LinhaTabela.buildLinhaTabelaTile(
                            'Nenhum registro localizado'),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
