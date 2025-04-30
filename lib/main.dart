import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _login() {
    print('Iniciar sesión pressed');
    // Add your login logic here

    // Clear the text fields after pressing the button
    _emailController.clear();
    _passwordController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: const Text(
            '!Bienvenido',
            style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.black87),
          ),
        ),
        backgroundColor: Colors.blue[50],
        elevation: 0,
      ),
      body: Container(
        color: Colors.white,
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 40.0),
            const Text(
              'Correo:',
              style: TextStyle(fontSize: 18.0),
            ),
            const SizedBox(height: 10.0),
            TextField(
              controller: _emailController,
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
              ),
            ),
            const SizedBox(height: 30.0),
            const Text(
              'Contraseña:',
              style: TextStyle(fontSize: 18.0),
            ),
            const SizedBox(height: 10.0),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
              ),
            ),
            const SizedBox(height: 40.0),
            Center(
              child: ElevatedButton(
                onPressed: _login,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue[100],
                  padding:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                ),
                child: const Text(
                  'Iniciar sesion',
                  style: TextStyle(fontSize: 18.0, color: Colors.blue),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
