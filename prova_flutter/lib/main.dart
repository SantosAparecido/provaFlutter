import 'package:flutter/material.dart';
import 'package:prova_flutter/routes.dart';


void main() {
 runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateTitle: (context) => "My App",
      initialRoute: RouterGenerator.homePage,
      onGenerateRoute: RouterGenerator.generateRoute,
      debugShowCheckedModeBanner: false,
    );
  }
}

