import 'package:flutter/cupertino.dart';

class Produto with ChangeNotifier {
  List<String> listItems = [
  "Cenoura",
  "Repolho",
  "Abobrinha",
  "Alface",
  "Brocolis",
  "Tomate",
  "Arroz",
  "Feijão",
  "Rucula",
  "Milho",
  "Pimentão",
  ];
  

  void adicionarProduto(String produto) {
    this.listItems.add(produto);
    notifyListeners();
  }

  String getProduto (int index) {
    return this.listItems[index];
  }

  void removerProduto(int index) {
    this.listItems.removeAt(index);
    notifyListeners();
  }
}