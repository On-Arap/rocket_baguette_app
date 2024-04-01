import 'dart:convert';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:json_theme/json_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final themeStr = await rootBundle.loadString('assets/app_theme.json');
  final themeJson = jsonDecode(themeStr);
  final theme = ThemeDecoder.decodeThemeData(themeJson)!;

  runApp(MyApp(
    theme: theme,
  ));
}

class MyApp extends StatefulWidget {
  final ThemeData theme;
  const MyApp({super.key, required this.theme});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: widget.theme,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Rocket Baguette'),
        ),
        body: const Center(
          child: Text("Body"),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
