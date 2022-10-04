import 'package:flutter/material.dart';
import 'package:prova_flutter/routes/camera_page.dart';
import 'package:prova_flutter/routes/home_page.dart';
import 'package:prova_flutter/routes/listView.dart';
import 'package:prova_flutter/routes/listaCompras.dart';
import 'package:prova_flutter/routes/location.dart';
import 'package:prova_flutter/routes/login_pages.dart';
import 'package:prova_flutter/routes/listaCompras.dart';

class RouterGenerator {
  static const String homePage = '/';
  static const String cameraPage = "/camera";
  static const String loginPage = '/loginPage';
  static const String myApp = '/myApp';
  static const String listVie = '/listVie';
  static const String location = '/location';
  RouterGenerator._() {}
    static Route<dynamic> generateRoute(RouteSettings settings) {
      switch (settings.name) {
        case homePage:
          return MaterialPageRoute(
            builder: (_) => const HomePage(),
          );
        case cameraPage:
          return MaterialPageRoute(
            builder: (_) => const CameraPage(),
          );
        case loginPage:
          return MaterialPageRoute(
            builder: (_) => const LoginPage(),
          );
        case myApp:
          return MaterialPageRoute(
            builder: (_) => MyApp(),
          );
        case listVie:
          return MaterialPageRoute(
            builder: (_) => ListVie(),
          );
        case location:
          return MaterialPageRoute(
            builder: (_) => Location(),
          );
        default:
          throw FormatException("Rota não encontrada");
      }
  }
}
