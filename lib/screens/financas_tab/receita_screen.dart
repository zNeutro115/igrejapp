import 'package:flutter/material.dart';
import 'package:igrejaapp/communs/base/base_container.dart';
import 'package:igrejaapp/communs/edit_delete_widget.dart';
import 'package:igrejaapp/communs/filtro_widget.dart';
import 'package:igrejaapp/communs/info_tile_widget.dart';
import 'package:igrejaapp/communs/page_switcher.dart';
import 'package:igrejaapp/screens/secretaria_tab/widgets/contador.dart';
import 'package:igrejaapp/screens/secretaria_tab/widgets/linha_tabela.dart';

class ReceitaScreen extends StatelessWidget {
  const ReceitaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseContainer(
      headlerText: 'Receita',
      widget: [
        const InfoTileWidget(
            text: 'Receitas', doesHasIcon: false, mainText: '331,00'),
        const InfoTileWidget(
            text: 'Dízimo', doesHasIcon: false, mainText: '331,00'),
        const InfoTileWidget(
            text: 'Doações', doesHasIcon: false, mainText: '00,00'),
        const InfoTileWidget(
            text: 'Renda', doesHasIcon: false, mainText: '00,00'),
        const InfoTileWidget(
            text: 'Apovado(s)',
            doesHasIcon: false,
            mainText: '3',
            color: Colors.green),
        const InfoTileWidget(
            text: 'Reprovado(s)',
            doesHasIcon: false,
            mainText: '1',
            color: Colors.red),
        const InfoTileWidget(
            text: 'Aguardando',
            doesHasIcon: false,
            mainText: '0',
            color: Colors.orange),
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
                      LinhaTabela.buildLinhaTabelaTile('Data'),
                      LinhaTabela.buildLinhaTabelaTile('Descrição'),
                      LinhaTabela.buildLinhaTabelaTile('Vínculo'),
                      LinhaTabela.buildLinhaTabelaTile('Categoria/Origem'),
                      LinhaTabela.buildLinhaTabelaTile('Valor'),
                      LinhaTabela.buildLinhaTabelaTile('Ações'),
                    ]),
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
                        const EditDeleteWidget()
                      ],
                    ),
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
                        const EditDeleteWidget()
                      ],
                    ),
                    const Divider(height: 8, endIndent: 16, indent: 16),
                    LinhaTabela(
                      tabela: [
                        LinhaTabela.buildLinhaTabelaTile('21/06/21',
                            color: Colors.red),
                        LinhaTabela.buildLinhaTabelaTile('Pessoa do Banco',
                            color: Colors.red),
                        LinhaTabela.buildLinhaTabelaTile('Pessoa',
                            color: Colors.red),
                        LinhaTabela.buildLinhaTabelaTile('Dizimo/Cantina',
                            color: Colors.red),
                        LinhaTabela.buildLinhaTabelaTile('R\$: 1200,01',
                            color: Colors.red),
                        const EditDeleteWidget()
                      ],
                    ),
                    const Divider(height: 8, endIndent: 16, indent: 16),
                    LinhaTabela(
                      tabela: [
                        LinhaTabela.buildLinhaTabelaTile('21/06/21',
                            color: Colors.green),
                        LinhaTabela.buildLinhaTabelaTile('Teste',
                            color: Colors.green),
                        LinhaTabela.buildLinhaTabelaTile('Visitante',
                            color: Colors.green),
                        LinhaTabela.buildLinhaTabelaTile('Dizimo/Ensino',
                            color: Colors.green),
                        LinhaTabela.buildLinhaTabelaTile('R\$: 91,00',
                            color: Colors.green),
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
