import 'package:flutter/material.dart';
import 'package:todo_app1/core/route_generator.dart';
import 'package:todo_app1/module/login/login_services.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    return Scaffold(
      appBar: AppBar(title: Text('Login Screen'),),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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
                  LoginServices.login(
                          email: emailController.text,
                          password: passwordController.text)
                      .whenComplete(
                    () {
                      if (context.mounted) {
                        Navigator.pushNamed(context, Routes.HomeScreen);
                      }
                      debugPrint('Login successful');
                    },
                  );
                }
              },
              child: const Text('Login'),
            ),
            const SizedBox(height: 28),
            TextButton(onPressed: (){
              Navigator.pushReplacementNamed(context, Routes.SignupScreen);
            }, child: const Text('Create Account')),
          ],
        ),
      ),
    );
  }
}
