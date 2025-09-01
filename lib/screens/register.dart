import 'package:flutter/material.dart';
import 'package:halo_stories/auth/auth_service.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  
    //get auth service 
  final authService = AuthService();

  // text controllers
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  //sign up button pressed
  void signUp() async {
    //prepare data
    final email = _emailController.text;
    final password = _passwordController.text;
    final confirmPassword = _confirmPasswordController.text;

    //check that passwords match
    if(password != confirmPassword) {
      ScaffoldMessenger.of(context).
        showSnackBar(const SnackBar(content: Text("Passwords don't match")));
      return;
    }

    //attempt sign up
    try {
      await authService.signUpWithEmailPassword(email, password);

      //pop this register page
      Navigator.pop(context);
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('Error $e')));
      }
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 54, 197, 192),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 54, 197, 192),
        title: Text(
          'SIGN UP',
          style: GoogleFonts.nunito(
            fontSize: 50,
            fontWeight: FontWeight.bold,
            color: Colors.deepPurple,
          )
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
        children: [
          TextField(
            controller: _emailController,
            decoration: InputDecoration(
              filled: true,
              fillColor: const Color.fromARGB(255, 235, 229, 209),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              hintText: 'Email'
            ),
          ),
          Padding(padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5)),
          TextField(
            controller: _passwordController,
            decoration: InputDecoration(
              filled: true,
              fillColor: const Color.fromARGB(255, 235, 229, 209),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              hintText: 'Password'
            ),
          ),
          Padding(padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5)),
          TextField(
            controller: _confirmPasswordController,
            decoration: InputDecoration(
              filled: true,
              fillColor: const Color.fromARGB(255, 235, 229, 209),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              hintText: 'Confirm Password'
            ),
          ),
          const SizedBox(height: 12),
          ElevatedButton(
            onPressed: signUp, 
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepPurple,
              foregroundColor: Colors.white,
            ),
            child: Text(
              'SIGN UP',
              style: GoogleFonts.nunito(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              )
            )
          ),

          
        ],
      ),
    );
  }
}