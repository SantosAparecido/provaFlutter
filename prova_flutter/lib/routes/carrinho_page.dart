import 'package:flutter/material.dart';
import 'package:prova_flutter/routes.dart';
import 'package:prova_flutter/src/carrinho.dart';
import 'package:provider/provider.dart';

class CarrinhoPage extends StatelessWidget {
  const CarrinhoPage();
  

  @override
  Widget build(BuildContext context) {
    final carrinhoService = Provider.of<Carrinho>(context);
    return MaterialApp(
      home: Scaffold(
      body: ListView.builder(
              itemCount: carrinhoService.getTamanho(),
              itemBuilder: (context, index) {
                return Container(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text("${carrinhoService.getProduto(index)}"),
                        ],
                      ),
                    ],
                  ),
                );
              }

      ),
      ),
    );

  }
}