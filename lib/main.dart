import 'package:flutter/material.dart';
import 'package:sample_app/pages/home.dart';
import 'package:sample_app/pages/second.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        '/second': (context) =>
            const SecondPage(data: "Routing from first page"),
      },
      home: const Home(),
    );
  }
}
