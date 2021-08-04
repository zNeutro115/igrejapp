import 'package:flutter/material.dart';
import 'package:igrejaapp/communs/base/base_container.dart';
import 'package:igrejaapp/communs/filtro_widget.dart';
import 'package:igrejaapp/communs/info_tile_widget.dart';
import 'package:igrejaapp/communs/page_switcher.dart';
import 'package:igrejaapp/screens/secretaria_tab/widgets/contador.dart';
import 'package:igrejaapp/screens/secretaria_tab/widgets/linha_tabela.dart';

class ExtratosScreen extends StatelessWidget {
  const ExtratosScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseContainer(
      headlerText: 'Receita',
      widget: [
        const InfoTileWidget(
          color: Colors.green,
          text: 'Receita',
          icon: Icons.ac_unit,
          mainText: 'R\$: 331,00',
        ),
        const InfoTileWidget(
          color: Colors.orange,
          text: 'Despesas',
          icon: Icons.person,
          mainText: 'R\$: 3.000,00',
        ),
        const InfoTileWidget(
          color: Colors.blue,
          text: 'Saldo',
          icon: Icons.cloud_circle,
          mainText: 'R\$: -2.669,00',
        ),
        const InfoTileWidget(
          color: Colors.green,
          text: 'Receitas futuras',
          mainText: 'R\$: 0,00',
          icon: Icons.computer,
        ),
        const InfoTileWidget(
          color: Colors.red,
          text: 'Despesas faturas',
          mainText: 'R\$: 3.000,00',
          icon: Icons.computer,
        ),
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
          // height: MediaQuery.of(context).size.height * 0.8,
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
                      'Relatórios',
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
                      LinhaTabela.buildLinhaTabelaTile('Data'),
                      LinhaTabela.buildLinhaTabelaTile('Descrição'),
                      LinhaTabela.buildLinhaTabelaTile('Categoria'),
                      LinhaTabela.buildLinhaTabelaTile('Valor'),
                    ]),
                    const Divider(height: 8, endIndent: 16, indent: 16),
                    LinhaTabela(
                      tabela: [
                        LinhaTabela.buildLinhaTabelaTile('18/07/21',
                            color: Colors.green),
                        LinhaTabela.buildLinhaTabelaTile('Pessoa do Banco',
                            color: Colors.green),
                        LinhaTabela.buildLinhaTabelaTile('Pessoa',
                            color: Colors.green),
                        LinhaTabela.buildLinhaTabelaTile('Dizimo/Ensino',
                            color: Colors.green),
                        LinhaTabela.buildLinhaTabelaTile('R\$: 120,00',
                            color: Colors.green),
                      ],
                    ),
                    const Divider(height: 8, endIndent: 16, indent: 16),
                    LinhaTabela(
                      tabela: [
                        LinhaTabela.buildLinhaTabelaTile('18/07/21',
                            color: Colors.green),
                        LinhaTabela.buildLinhaTabelaTile('Teste Edit Mov',
                            color: Colors.green),
                        LinhaTabela.buildLinhaTabelaTile('Visitante',
                            color: Colors.green),
                        LinhaTabela.buildLinhaTabelaTile('Dizimo/Ensino',
                            color: Colors.green),
                        LinhaTabela.buildLinhaTabelaTile('R\$: 120,00',
                            color: Colors.green),
                      ],
                    ),
                    const Divider(height: 8, endIndent: 16, indent: 16),
                    LinhaTabela(
                      tabela: [
                        LinhaTabela.buildLinhaTabelaTile('22/07/21',
                            color: Colors.green),
                        LinhaTabela.buildLinhaTabelaTile('Teste',
                            color: Colors.green),
                        LinhaTabela.buildLinhaTabelaTile('Visitante',
                            color: Colors.green),
                        LinhaTabela.buildLinhaTabelaTile('Dizimo/Ensino',
                            color: Colors.green),
                        LinhaTabela.buildLinhaTabelaTile('R\$: 91,00',
                            color: Colors.green),
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
