import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:igrejaapp/screens/login_screen/widget/custom_textfield.dart';
import 'package:igrejaapp/utils/app_routes.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Stack(
        children: [
          Container(
            height: height * 0.4,
            color: const Color(0xff2074ac),
          ),
          Center(
            child: Container(
              height: height * 0.78,
              width: width * 0.85,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(height: 32),
                  SizedBox(
                    height: 150,
                    child: Image.asset(
                      'assets/connection_logo.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                  const SizedBox(height: 32),
                  const Center(
                    child: Text(
                      'Acesse seu painel',
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                  ),
                  const SizedBox(height: 8),
                  const CustomTextFieldLogin(
                    text: 'E-mail',
                  ),
                  const SizedBox(height: 8),
                  const CustomTextFieldLogin(
                    text: 'Senha',
                  ),
                  const SizedBox(height: 8),
                  SizedBox(
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context)
                            .pushReplacementNamed(AppRoutes.PAINEL);
                      },
                      style: ElevatedButton.styleFrom(
                        primary: const Color(0xff2074ac),
                      ),
                      child: const Text('Acessar'),
                    ),
                  ),
                  const SizedBox(height: 16),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
