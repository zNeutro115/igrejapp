import 'package:flutter/material.dart';
import 'package:igrejaapp/communs/base/base_container.dart';
import 'package:igrejaapp/communs/edit_delete_widget.dart';
import 'package:igrejaapp/communs/filtro_widget.dart';
import 'package:igrejaapp/communs/page_switcher.dart';
import 'package:igrejaapp/screens/secretaria_tab/widgets/contador.dart';
import 'package:igrejaapp/screens/secretaria_tab/widgets/linha_tabela.dart';

class CelulasScreen extends StatelessWidget {
  const CelulasScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseContainer(
      headlerText: 'Células',
      widget: [
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
              const ContadorWidget(),
              const FiltroWidget(),
              const Divider(height: 8, endIndent: 8, indent: 8),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Column(
                  children: [
                    LinhaTabela(tabela: [
                      LinhaTabela.buildLinhaTabelaTile('cell.name'),
                      LinhaTabela.buildLinhaTabelaTile('cell.leader_1'),
                      LinhaTabela.buildLinhaTabelaTile('cell.network'),
                      LinhaTabela.buildLinhaTabelaTile('cell.sector'),
                      LinhaTabela.buildLinhaTabelaTile('Ações'),
                    ]),
                    const Divider(height: 8, endIndent: 16, indent: 16),
                    LinhaTabela(
                      tabela: [
                        LinhaTabela.buildLinhaTabelaTile('Teste'),
                        LinhaTabela.buildLinhaTabelaTile('Pessoa do Banco'),
                        LinhaTabela.buildLinhaTabelaTile('Teste'),
                        LinhaTabela.buildLinhaTabelaTile('Teste'),
                        const EditDeleteWidget()
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 8),
              const PageSwitcher(),
              const SizedBox(height: 4),
            ],
          ),
        ),
      ],
    );
  }
}
