import 'package:flutter/material.dart';
import 'package:prova_flutter/routes/first_page.dart';
import 'package:prova_flutter/routes/home_page.dart';

class RouterGenerator {
  static const String homePage = '/';
  static const String firstPage = "/first";
  RouterGenerator._() {}
    static Route<dynamic> generateRoute(RouteSettings settings) {
      switch (settings.name) {
        case homePage:
          return MaterialPageRoute(
            builder: (_) => const HomePage(),
          );
        case firstPage:
          return MaterialPageRoute(
            builder: (_) => const FirstPage(),
          );
        default:
          throw FormatException("Rota não encontrada");
      }
  }
}
