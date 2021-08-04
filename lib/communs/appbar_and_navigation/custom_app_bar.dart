import 'package:flutter/material.dart';
import 'package:igrejaapp/communs/appbar_and_navigation/drawer_tile.dart';
import 'package:igrejaapp/utils/app_routes.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget _buildPageTile(String text, {String page = 'nada'}) {
      return TextButton(
        onPressed: () {
          if (page != 'nada') Navigator.of(context).pushReplacementNamed(page);
        },
        child: Text(
          text,
          style: TextStyle(
            color: page != 'nada' ? Colors.black : Colors.grey,
          ),
        ),
      );
    }

    return Drawer(
      child: ListView(
        shrinkWrap: true,
        children: [
          Container(
            height: 140,
            margin: const EdgeInsets.symmetric(horizontal: 16),
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/connection_logo.png')),
            ),
          ),
          const DrawerTile(
            text: 'Painel',
            telas: [],
          ),
          const DrawerTile(
            text: 'Planos',
            telas: [],
          ),
          DrawerTile(
            text: 'Secretárias',
            telas: [
              _buildPageTile('Pessoas', page: AppRoutes.PESSOAS),
              _buildPageTile('Edição'),
              _buildPageTile('Documentos'),
              _buildPageTile('Escalas', page: AppRoutes.ESCALA_SECRETARIA),
              _buildPageTile('e-Credencials'),
              _buildPageTile('Certificados'),
              _buildPageTile('Diploma'),
              _buildPageTile('Auto Agenda'),
              _buildPageTile('Encontros'),
              _buildPageTile('Programação', page: AppRoutes.PROGRAMACAO),
              _buildPageTile('Coleção', page: AppRoutes.COLECAO),
            ],
          ),
          DrawerTile(
            text: 'Ensino',
            telas: [
              _buildPageTile('Cursos', page: AppRoutes.CURSOS),
              _buildPageTile('Classe'),
              _buildPageTile('Professores', page: AppRoutes.PROFESSORES),
              _buildPageTile('Alunos', page: AppRoutes.ALUNO),
              _buildPageTile('Aulas', page: AppRoutes.AULAS),
            ],
          ),
          DrawerTile(
            text: 'Células',
            telas: [
              _buildPageTile('Rede', page: AppRoutes.REDES),
              _buildPageTile('Coordenadores', page: AppRoutes.COORDENADORES),
              _buildPageTile('Setores', page: AppRoutes.SETORES),
              _buildPageTile('Supervisores', page: AppRoutes.SUPERVISORES),
              _buildPageTile('Células', page: AppRoutes.CELULAS),
              _buildPageTile('Líderes', page: AppRoutes.LIDERES),
              _buildPageTile('Membros', page: AppRoutes.MEMBROS),
              _buildPageTile('Estudos', page: AppRoutes.ESTUDOS),
              _buildPageTile('Reuniões', page: AppRoutes.REUNIOES),
              _buildPageTile('Encontros', page: AppRoutes.ENCONTROS),
              _buildPageTile('Consolidações', page: AppRoutes.CONSOLIDACOES),
              _buildPageTile('Gráficos'),
              _buildPageTile('Relatórios'),
            ],
          ),
          DrawerTile(
            text: 'Finanças',
            telas: [
              _buildPageTile('Receitas'),
              _buildPageTile('Despesas'),
              _buildPageTile('Gráfico'),
              _buildPageTile('Extratos'),
              _buildPageTile('Fornecedores'),
              _buildPageTile('Configurações'),
              _buildPageTile('Contas'),
              _buildPageTile('Transferências'),
              _buildPageTile('Declarações'),
              _buildPageTile('Recibos'),
              _buildPageTile('Filiais'),
            ],
          ),
          DrawerTile(
            text: 'Organização',
            telas: [
              _buildPageTile('Ministérios', page: AppRoutes.MINISTERIOS),
              _buildPageTile('Departamentos', page: AppRoutes.DEPARTAMENTOS),
              _buildPageTile('Escalas', page: AppRoutes.ESCALA_ORGANIZACOES),
            ],
          ),
          DrawerTile(
            text: 'Patromônio',
            telas: [
              _buildPageTile('Bens', page: AppRoutes.BENS),
              _buildPageTile('Ambientes', page: AppRoutes.AMBIENTES),
              _buildPageTile('Reservas', page: AppRoutes.RESERVAS),
              _buildPageTile('Configurações', page: AppRoutes.CONFIGURACOES),
            ],
          ),
          DrawerTile(
            text: 'Controle',
            telas: [
              _buildPageTile('Igrejas', page: AppRoutes.IGREJAS),
              _buildPageTile('Usuários'),
              _buildPageTile('Acessos', page: AppRoutes.LOGIN),
            ],
          ),
        ],
      ),
      elevation: 0,
    );
  }
}
