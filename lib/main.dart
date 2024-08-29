import 'package:flutter/material.dart';
import 'package:assistpro/screens/LoginScreen.dart';

// Función principal que inicia la aplicación
void main() {
  runApp(const MyApp());
}

// Widget principal de la aplicación
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Assistpro', // Título de la aplicación
      debugShowCheckedModeBanner: false, // Desactiva la etiqueta de depuración en la esquina superior derecha
      initialRoute: '/splash', // Ruta inicial al iniciar la aplicación
      routes: {
        '/splash': (context) => SplashScreen(), // Ruta para la pantalla de inicio
        '/login': (context) => LoginScreen(), // Ruta para la pantalla de login
      },
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple), // Tema de la aplicación con un color de semilla
        useMaterial3: true, // Usa Material Design 3
      ),
    );
  }
}

// Widget para la pantalla de inicio (SplashScreen)
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

// Estado para la pantalla de inicio
class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToLogin(); // Llama a la función para navegar a la pantalla de login
  }

  // Función que navega a la pantalla de login después de 4 segundos
  _navigateToLogin() async {
    // Espera 4 segundos antes de navegar a la pantalla de login
    await Future.delayed(Duration(seconds: 4), () {});
    Navigator.pushReplacementNamed(context, '/login'); // Reemplaza la pantalla actual con la pantalla de login
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity, // Ancho del contenedor igual al ancho de la pantalla
        height: double.infinity, // Alto del contenedor igual al alto de la pantalla
        color: Color(0xFF060537), // Color de fondo azul oscuro
        child: Center(
          child: Image.asset('assets/secure_flow_hub.png'), // Muestra una imagen centrada en la pantalla
        ),
      ),
    );
  }
}
