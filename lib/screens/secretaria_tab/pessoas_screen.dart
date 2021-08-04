import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:igrejaapp/communs/base/base_container.dart';
import 'package:igrejaapp/communs/edit_delete_widget.dart';
import 'package:igrejaapp/communs/filtro_widget.dart';
import 'package:igrejaapp/communs/info_tile_widget.dart';
import 'package:igrejaapp/communs/page_switcher.dart';
import 'package:igrejaapp/screens/secretaria_tab/widgets/contador.dart';
import 'package:igrejaapp/screens/secretaria_tab/widgets/linha_tabela.dart';

class PessoasScreen extends StatelessWidget {
  const PessoasScreen({Key? key}) : super(key: key);

  Widget buildWidget(String text) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.blueAccent),
        ),
        child: Text(
          text,
          style: const TextStyle(color: Colors.blue),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BaseContainer(
      headlerText: 'Pessoas',
      widget: [
        const SizedBox(height: 8),
        const InfoTileWidget(
          color: Colors.yellow,
          text: 'Ativos',
          icon: Icons.ac_unit,
        ),
        const InfoTileWidget(
          color: Colors.blue,
          text: 'Novos',
          icon: Icons.person,
        ),
        const InfoTileWidget(
          color: Colors.green,
          text: 'Batizados',
          icon: Icons.cloud_circle,
        ),
        const InfoTileWidget(
          color: Colors.orange,
          text: 'Convertidos',
          icon: Icons.computer,
        ),
        const SizedBox(height: 8),
        Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
          ),
          child: Column(
            children: [
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildWidget('Novo'),
                  buildWidget('Ações'),
                  buildWidget('Contador'),
                ],
              ),
              const FiltroWidget(),
              const ContadorWidget(),
              const Divider(height: 4),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Column(
                  children: [
                    LinhaTabela(tabela: [
                      LinhaTabela.buildLinhaTabelaTile('Nome'),
                      LinhaTabela.buildLinhaTabelaTile('Email'),
                      LinhaTabela.buildLinhaTabelaTile('Telefone'),
                      LinhaTabela.buildLinhaTabelaTile('Celular'),
                      LinhaTabela.buildLinhaTabelaTile('Tipo'),
                      LinhaTabela.buildLinhaTabelaTile('Ações'),
                    ]),
                    LinhaTabela(
                      tabela: [
                        LinhaTabela.buildLinhaTabelaTile('Nome da Mãe'),
                        Container(),
                        Container(),
                        Container(),
                        LinhaTabela.buildLinhaTabelaTile('Membro'),
                        const EditDeleteWidget()
                      ],
                    ),
                    const Divider(height: 8, endIndent: 16, indent: 16),
                    LinhaTabela(
                      tabela: [
                        LinhaTabela.buildLinhaTabelaTile('Pessoa do Banco'),
                        Container(),
                        Container(),
                        Container(),
                        LinhaTabela.buildLinhaTabelaTile('Membro'),
                        const EditDeleteWidget()
                      ],
                    ),
                    const Divider(height: 8, endIndent: 16, indent: 16),
                    LinhaTabela(
                      tabela: [
                        LinhaTabela.buildLinhaTabelaTile('Validação'),
                        Container(),
                        Container(),
                        Container(),
                        LinhaTabela.buildLinhaTabelaTile('Membro'),
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
