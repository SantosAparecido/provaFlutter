import 'package:flutter/material.dart';
import 'package:prova_flutter/routes.dart';
import 'package:prova_flutter/src/carrinho.dart';
import 'package:prova_flutter/src/produtos.dart';
import 'package:provider/provider.dart';


void main() => runApp(MultiProvider(providers: [ChangeNotifierProvider(create: (context) => Produto()),ChangeNotifierProvider(create: (context) => Carrinho())], child: MyApp(),));

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