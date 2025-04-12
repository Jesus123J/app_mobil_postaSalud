import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/home_screen.dart';
import 'package:flutter_application_1/screens/login_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //Contiene toda la aplicacion
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      routes: {
        //Asignacion de un nombre a LoginScreen para llamarlo
        'login': (_) => const LoginScreen(),
        'home': (_) => const HomeScreen(),
      },
      initialRoute: 'login', //Llama a 'login'
    );
  }
}
