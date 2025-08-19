import 'package:flutter/material.dart';
import 'package:halo_stories/auth/auth_gate.dart';
import 'package:halo_stories/home.dart';
import 'package:halo_stories/screens/login.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';


void main() async { 
  WidgetsFlutterBinding.ensureInitialized();

  await dotenv.load(fileName: "/Users/benwilliams/Side-Projects/saints-app/halo_stories/assets/.env");

  await Supabase.initialize(
    url: dotenv.env['SUPABASE_URL']!,
    anonKey: dotenv.env['SUPABASE_ANON_KEY']!,
  );
  runApp(const MyApp()); 
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: AuthGate(),
    );
  }
}