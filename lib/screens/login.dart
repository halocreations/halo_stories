import 'package:flutter/material.dart';
import 'package:halo_stories/auth/auth_service.dart';
import 'package:halo_stories/screens/register.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  //get auth service 
  final authService = AuthService();

  // text controllers
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();


  void login() async {
    //prepare data
    final email = _emailController.text;
    final password = _passwordController.text;

    try {
      await authService.signInWithEmailPassword(email, password);
    } catch(e) {
      if(mounted) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Error: $e')));
      }
    }
  }
  //login button pressed
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
        children: [
          Padding(padding: EdgeInsets.only(top: 20),),
          TextField(
            controller: _emailController,
            decoration: InputDecoration(
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              hintText: 'Email'
            ),
          ),
          Padding(padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),),
          TextField(
            controller: _passwordController,
            decoration: InputDecoration(
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              hintText: 'Password',
            )
          ),
          const SizedBox(height: 12),
          ElevatedButton(
            onPressed: login, 
            child: const Text('Login'),
          ),

          GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const RegisterPage()),
            ),
            child: const Center(child: Text("Don't have an account? Sign up"))
          ),

        ]
      )
    );
  }
}