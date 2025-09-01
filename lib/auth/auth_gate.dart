import 'package:flutter/material.dart';
import 'package:halo_stories/home.dart';
import 'package:halo_stories/screens/login.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Supabase.instance.client.auth.onAuthStateChange,
      builder: (context, snapshot) {
        if(snapshot.connectionState == ConnectionState.waiting) {
          return const Scaffold(
            body: Center(child: CircularProgressIndicator(),)
          );
        }

        final session = snapshot.hasData ? snapshot.data!.session : null;


        // change back to HomeScreen once done with changing UI of login screen
        if(session != null) {
          return HomeScreen();
        }
        else {
          return LoginPage();
        }
      },
    );
  }
}