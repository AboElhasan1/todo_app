import 'package:flutter/material.dart';
import 'package:todo_app1/core/route_generator.dart';
import 'package:todo_app1/module/regestration/register_services.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController usernameController = TextEditingController();
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: usernameController,
              decoration: const InputDecoration(
                labelText: 'Username',
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: emailController,
              decoration: const InputDecoration(
                labelText: 'Email',
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: passwordController,
              decoration: const InputDecoration(
                labelText: 'Password',
              ),
            ),
            const SizedBox(height: 28),
            ElevatedButton(
              onPressed: () {
                if (emailController.text.isNotEmpty &&
                    passwordController.text.isNotEmpty) {
                  RegisterServices.createAccount(
                          username: usernameController.text,
                          email: emailController.text,
                          password: passwordController.text)
                      .whenComplete(
                    () {
                      if (context.mounted) {
                        Navigator.pushNamed(context, Routes.HomeScreen);
                      }
                      debugPrint('Registration successful');
                    },
                  );
                }
              },
              child: const Text('Register'),
            ),
            const SizedBox(height: 28),
            TextButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, Routes.LoginScreen);
                },
                child: const Text('Login')),
          ],
        ),
      ),
    );
  }
}
