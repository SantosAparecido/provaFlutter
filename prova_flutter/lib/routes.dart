import 'package:flutter/material.dart';
import 'package:prova_flutter/routes/camera_page.dart';
import 'package:prova_flutter/routes/carrinho_page.dart';
import 'package:prova_flutter/routes/home_page.dart';
import 'package:prova_flutter/routes/listaView.dart';
import 'package:prova_flutter/routes/listaCompras.dart';
import 'package:prova_flutter/routes/location.dart';
import 'package:prova_flutter/routes/login_pages.dart';

class RouterGenerator {
  static const String homePage = '/';
  static const String cameraPage = "/camera";
  static const String loginPage = '/loginPage';
  static const String listaView = '/listaView';
  static const String carrinhoPage= '/carrinhoPage';
  static const String listaCompras= '/listaCompras';
  
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
        case listaView:
          return MaterialPageRoute(
            builder: (_) => ListaView(),
          );
        case carrinhoPage:
          return MaterialPageRoute(
            builder: (_) => CarrinhoPage(),
          );
        case listaCompras:
          return MaterialPageRoute(
            builder: (_) => ListaCompras(),
          );
        default:
          throw FormatException("Rota não encontrada");
      }
  }
}
