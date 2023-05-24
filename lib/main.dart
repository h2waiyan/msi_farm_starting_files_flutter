import 'package:flutter/material.dart';

import 'detaills.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 58, 183, 89)),
        useMaterial3: true,
      ),
      // home: const MyHomePage(),
      initialRoute: '/',
      routes: {
        '/': (context) => const MyHomePage(),
        '/details': (context) => const DetailsPage()
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("MSI FARM")),
      body: Center(
          child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/details', arguments: {"id": 1});
              },
              child: const Text("Go to Details"))),
    );
  }
}
