import 'package:flutter/material.dart';
import 'package:medics/pages/launch_onbording_page.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:medics/pages/main_pages.dart';

void main() {
  // WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  // void initState() {
  //   super.initState();
  //   initialization();
  // }

  // void initialization() async {
  //   await Future.delayed(const Duration(seconds: 3));
  //   FlutterNativeSplash.remove();
  // }

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPages(),
    );
  }
}
