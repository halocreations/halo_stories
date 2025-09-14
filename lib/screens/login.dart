import 'package:flutter/material.dart';
import 'package:halo_stories/auth/auth_service.dart';
import 'package:halo_stories/home.dart';
import 'package:halo_stories/screens/register.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:google_sign_in/google_sign_in.dart';

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
  bool _obscureText = true;

  void login() async {
    //prepare data
    final email = _emailController.text.trim();
    final password = _passwordController.text;

    try {
      await authService.signInWithEmailPassword(
        email, 
        password,
      );
    } catch(e) {
      if(mounted) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Error: $e')));
      }
    }
  }

  Future<User?> signInWithGoogle() async {
    try {

    } catch (e) {

    }
  }
  //login button pressed
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 54, 197, 192),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 54, 197, 192),
        title: Padding(
          padding: EdgeInsets.only(top: 15),
          child: Text(
            'HALO STORIES',
            style: GoogleFonts.nunito(
              fontSize: 50,
              color: Colors.deepPurple,
              fontWeight: FontWeight.bold,
            ),
          ),
          
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
        children: [
          Padding(padding: EdgeInsets.only(top: 20),),
          ClipOval(
            child: Image.asset(
              'assets/logo_revised.png',
              fit: BoxFit.cover,
            )
          ),

          SizedBox(height: 35),
          Container(
            width: 250,
            height: 290,
            padding: EdgeInsets.symmetric(horizontal: 10, vertical:20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                TextField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color.fromARGB(255, 235, 229, 209),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    hintText: 'Email',
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                ),
                TextField(
                  obscureText: _obscureText,
                  autocorrect: false,
                  controller: _passwordController,
                  decoration: InputDecoration(
                    suffixIcon: GestureDetector(
                      child: Icon(
                        _obscureText ? Icons.visibility_off : Icons.visibility,
                      ),
                      onTap: () {
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                      },
                    ),
                    filled: true,
                    fillColor: const Color.fromARGB(255, 235, 229, 209),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    hintText: 'Password',
                  ),
                ),
                const SizedBox(height: 12),
                ElevatedButton(
                  
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    minimumSize: Size(double.infinity, 50),
                  ),
                  onPressed: login,
                  child: Text(
                    'LOGIN',
                    style: GoogleFonts.nunito(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const RegisterPage(),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "SIGN UP",
                      style: GoogleFonts.nunito(
                        color: Colors.deepPurple,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]
      )
    );
  }
}