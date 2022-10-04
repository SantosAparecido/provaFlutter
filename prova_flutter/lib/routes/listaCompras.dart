import 'package:flutter/material.dart';
import 'package:prova_flutter/src/carrinho.dart';
import 'package:prova_flutter/src/produtos.dart';
import 'package:provider/provider.dart';


void main() => runApp(MultiProvider(providers: [ChangeNotifierProvider(create: (context) => Produto()),ChangeNotifierProvider(create: (context) => Carrinho())], child: MyApp(),));


class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: Scaffold(
          floatingActionButton: FloatingActionButton(
                                onPressed: () {},
                                child: const Icon(Icons.add_location_alt_outlined),
                                backgroundColor: Color.fromARGB(255, 15, 163, 47),
                              ),
          appBar: AppBar(
            title: Text("Lista de Compras"),
          ),
          body:Consumer<Produto>(
          builder: (context, produtos, child) => 
            Container(
                child: ListView.builder(
                itemCount: produtos.listItems.length,
                itemBuilder: (context, index) {
                return Dismissible(
                    background: stackBehindDismiss(),
                    secondaryBackground: secondarystackBehindDismiss(),
                    key: ObjectKey(produtos.getProduto(index)),
                    child: Expanded(
                      child: Container(
                      padding: EdgeInsets.all(20.0),
                      child: Text(produtos.getProduto(index)),

                      ),
                    ),
                    onDismissed: (direction) {
                      if (direction == DismissDirection.startToEnd) {
                        print("Adicionar ao carrinho");
                        Provider.of<Carrinho>(context).adicionarAoCarrinho( produtos.getProduto(index));
                        produtos.removerProduto(index);
                      } else {
                        print('Deletar item');
                        produtos.removerProduto(index);
                      }
                    },
                    confirmDismiss: (DismissDirection direction) async {
                      return await showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: const Text("Certeza?"),
                            content: direction == DismissDirection.startToEnd
                                ? Text("Deseja colocar este item em seu carrinho?")
                                : Text("Deseja deletar este item de sua lista?"),
                            actions: <Widget>[
                              ElevatedButton(
                                onPressed: () => Navigator.of(context).pop(true),
                                child: direction == DismissDirection.startToEnd
                                    ? Text("Sim")
                                    : Text("Sim"),
                              ),
                              ElevatedButton(
                                onPressed: () => Navigator.of(context).pop(false),
                                child: const Text("Não"),
                              ),
                              
                            ],
                          );
                        },
                      );
                    }
                  );
                },
              ),
            ),
          ),
        ),
      );
  }

  Widget secondarystackBehindDismiss() {
    return Container(
      color: Colors.red,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Icon(Icons.delete, color: Colors.white),
            Text('Excluir da lista', style: TextStyle(color: Colors.white)),
          ],
        ),
      ),
    );
  }

  Widget stackBehindDismiss() {
    return Container(
      color: Color.fromARGB(255, 47, 134, 53),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Row(
          children: [
            Icon(Icons.shopping_basket_outlined, color: Colors.white),
            Text(' Adicionar ao carrinho', style: TextStyle(color: Colors.white)),
          ],
        ),
      ),
    );
  }
}
