
import 'package:flutter/material.dart';

void main() {
  runApp(const AnatomiaApp());
}

class AnatomiaApp extends StatelessWidget {
  const AnatomiaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Anatomía para Fisioterapeutas',
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF071426),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF00B8D9),
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
      ),
      home: const InicioScreen(),
    );
  }
}

class InicioScreen extends StatelessWidget {
  const InicioScreen({super.key});

  final List<String> modulos = const [
    'Atlas anatómico 3D',
    'Anatomía descriptiva',
    'Anatomía funcional',
    'Anatomía palpatoria',
    'Evaluación muscular',
    'Dermatomas y miotomas',
    'Neuroanatomía',
    'Biblioteca científica',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ANATOMÍA FISIOTERAPIA'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const SizedBox(height: 20),
          const Icon(
            Icons.accessibility_new,
            size: 90,
            color: Color(0xFF00D9FF),
          ),
          const SizedBox(height: 15),
          const Text(
            'Anatomía Humana',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 27,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            'Plataforma de aprendizaje para fisioterapeutas',
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 30),
          const Text(
            'MÓDULOS DE ESTUDIO',
            style: TextStyle(
              color: Color(0xFF00D9FF),
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 12),
          ...modulos.map(
            (modulo) => Card(
              color: const Color(0xFF11243B),
              child: ListTile(
                leading: const Icon(
                  Icons.school,
                  color: Color(0xFF00D9FF),
                ),
                title: Text(modulo),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('$modulo: próximamente')),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
