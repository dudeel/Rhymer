import 'package:flutter/material.dart';
import 'package:rhymer/router/router.dart';

void main() {
  runApp(const RhymerApp());
}

class RhymerApp extends StatefulWidget {
  const RhymerApp({super.key});

  @override
  State<RhymerApp> createState() => _RhymerAppState();
}

class _RhymerAppState extends State<RhymerApp> {
  final _router = AppRouter();

  @override
  Widget build(BuildContext context) {
    const primaryColor = Color(0xFFF82810);

    return MaterialApp.router(
      title: 'Rhymer',
      theme: ThemeData(
        primaryColor: primaryColor,
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFFEFF1F3),
      ),
      routerConfig: _router.config(),
    );
  }
}
