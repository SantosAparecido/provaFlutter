import 'package:flutter/cupertino.dart';

class Carrinho with ChangeNotifier {
  List<String> listCar = [
  ];
  
  int getTamanho()=>listCar.length;
  void adicionarAoCarrinho(String produto) {
    this.listCar.add(produto);
    notifyListeners();
  }



  String getProduto (int index) {
    return this.listCar[index];
  }

  // void removerProduto(int index) {
  //   this.listCar.removeAt(index);
  //   notifyListeners();
  // }
}