import 'package:flutter/material.dart';
import 'package:login_frontend_20241/Services/auth_services.dart';
import 'package:provider/provider.dart';

void main() => runApp(const PrincipalScr());

class PrincipalScr extends StatelessWidget {
  const PrincipalScr({super.key});

  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context, listen: false);
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
            title: const Text('Material App Bar'),
            leading: IconButton(
              icon: const Icon(Icons.login_outlined),
              onPressed: () {
                authService.logout();
                Navigator.pushReplacementNamed(context, 'login');
              },
            )),
        body: const Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
