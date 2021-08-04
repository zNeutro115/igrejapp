import 'package:flutter/material.dart';
import 'package:igrejaapp/screens/celulas_tab/celulas_screen.dart';
import 'package:igrejaapp/screens/celulas_tab/consolidacoes.dart';
import 'package:igrejaapp/screens/celulas_tab/coordenadores_screen.dart';
import 'package:igrejaapp/screens/celulas_tab/encontros_screen.dart';
import 'package:igrejaapp/screens/celulas_tab/estudos_screen.dart';
import 'package:igrejaapp/screens/celulas_tab/lideres_screen.dart';
import 'package:igrejaapp/screens/celulas_tab/membros_screen.dart';
import 'package:igrejaapp/screens/celulas_tab/redes_screen.dart';
import 'package:igrejaapp/screens/celulas_tab/reunioes_screen.dart';
import 'package:igrejaapp/screens/celulas_tab/setores_screen.dart';
import 'package:igrejaapp/screens/celulas_tab/supervisores.dart';
import 'package:igrejaapp/screens/controle_tab/igrejas_screen.dart';
import 'package:igrejaapp/screens/ensino_tab/aluno_screem.dart';
import 'package:igrejaapp/screens/ensino_tab/aulas_screen.dart';
import 'package:igrejaapp/screens/ensino_tab/cursos_screen.dart';
import 'package:igrejaapp/screens/ensino_tab/professores_screen.dart';
import 'package:igrejaapp/screens/financas_tab/contas_screen.dart';
import 'package:igrejaapp/screens/financas_tab/despesas_screen.dart';
import 'package:igrejaapp/screens/financas_tab/dizimistas_screen.dart';
import 'package:igrejaapp/screens/financas_tab/extratos_screen.dart';
import 'package:igrejaapp/screens/financas_tab/receita_screen.dart';
import 'package:igrejaapp/screens/login_screen/login_screen.dart';
import 'package:igrejaapp/screens/organizacao_tab/departamentos_screen.dart';
import 'package:igrejaapp/screens/organizacao_tab/escalas_screen.dart';
import 'package:igrejaapp/screens/organizacao_tab/misterios_screen.dart';
import 'package:igrejaapp/screens/painel_screen/painel_screen.dart';
import 'package:igrejaapp/screens/patrimonio/ambientes_screen.dart';
import 'package:igrejaapp/screens/patrimonio/bens_screen.dart';
import 'package:igrejaapp/screens/patrimonio/configuracoes_screen.dart';
import 'package:igrejaapp/screens/patrimonio/reservas_screen.dart';
import 'package:igrejaapp/screens/secretaria_tab/colecao_screen.dart';
import 'package:igrejaapp/screens/secretaria_tab/escala_screen.dart';
import 'package:igrejaapp/screens/secretaria_tab/pessoas_screen.dart';
import 'package:igrejaapp/screens/secretaria_tab/programacao_screen.dart';
import 'package:igrejaapp/utils/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: const Color.fromARGB(255, 4, 125, 141),
      ),
      home: const ExtratosScreen(),
      routes: {
        //ensino tab
        AppRoutes.LOGIN: (ctx) => const LoginScreen(),
        AppRoutes.PAINEL: (ctx) => const PainelScreen(),
        AppRoutes.CURSOS: (ctx) => const CursosScreen(),
        AppRoutes.AULAS: (ctx) => const AulasScreen(),
        AppRoutes.ALUNO: (ctx) => const AlunosScreen(),
        AppRoutes.PROFESSORES: (ctx) => const ProfessoresScreen(),

        //secretaria tab
        AppRoutes.ESCALA_SECRETARIA: (ctx) => const EscalaSecretariaScreen(),
        AppRoutes.PROGRAMACAO: (ctx) => const ProgramacaoScreen(),
        AppRoutes.COLECAO: (ctx) => const ColecaoScreen(),
        AppRoutes.PESSOAS: (ctx) => const PessoasScreen(),

        //celulas tab
        AppRoutes.CELULAS: (ctx) => const CelulasScreen(),
        AppRoutes.CONSOLIDACOES: (ctx) => const ConsolidacoesScreen(),
        AppRoutes.ENCONTROS: (ctx) => const EncontrosScreen(),
        AppRoutes.COORDENADORES: (ctx) => const CoordenadoresScreen(),
        AppRoutes.ESTUDOS: (ctx) => const EstudosScreen(),
        AppRoutes.LIDERES: (ctx) => const LideresScreen(),
        AppRoutes.MEMBROS: (ctx) => const MembrosScreen(),
        AppRoutes.REDES: (ctx) => const RedesScreen(),
        AppRoutes.REUNIOES: (ctx) => const ReunioesScreen(),
        AppRoutes.SETORES: (ctx) => const SetoresScreen(),
        AppRoutes.SUPERVISORES: (ctx) => const SupervisoresScreen(),

        //organizações tab
        AppRoutes.MINISTERIOS: (ctx) => const MinisteriosScreen(),
        AppRoutes.DEPARTAMENTOS: (ctx) => const DepartamentosScreen(),
        AppRoutes.ESCALA_ORGANIZACOES: (ctx) =>
            const EscalasOrganizacoesScreen(),

        //patrimonio tab
        AppRoutes.BENS: (ctx) => const BensScreen(),
        AppRoutes.AMBIENTES: (ctx) => const AmbientesScreen(),
        AppRoutes.RESERVAS: (ctx) => const ReservasScreen(),
        AppRoutes.CONFIGURACOES: (ctx) => const ConfiguracoesScreen(),

        //controle tab
        AppRoutes.IGREJAS: (ctx) => const IgrejasScreen(),
      },
    );
  }
}
