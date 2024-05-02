import 'package:flutter/material.dart';
import 'package:login_frontend_20241/providers/login_form_provider.dart';
import 'package:provider/provider.dart';

class RegistroPage extends StatelessWidget {
  RegistroPage({super.key});
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final loginForm = Provider.of<LoginF_Pfrovider>(context);
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: DecoratedBox(
        decoration:
            const BoxDecoration(color: Color.fromARGB(255, 96, 108, 93)),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                width: size.width * 0.80,
                height: size.height * 0.17,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                    //TODO: Agregan una imagen
                    ),
              ),
              Container(
                width: size.width * 0.80,
                height: size.height * 0.05,
                alignment: Alignment.center,
              ),
              TextField(
                controller: _emailController,
                decoration: const InputDecoration(
                  hintText: 'ejemplo@prueba.com',
                  labelText: 'Email',
                  labelStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 255, 244, 244),
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  hintText: '*********',
                  labelText: 'Contraseña',
                  labelStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 255, 244, 244),
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              TextButton(
                onPressed: () {
                  print('Boton iniciar sesion');
                  Navigator.pushNamed(context, 'login', arguments: '');
                },
                child: const Text(
                  '¿Ya tienes una cuenta? Inicia sesion',
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 244, 244),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}