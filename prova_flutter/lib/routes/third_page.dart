import 'package:flutter/material.dart';
import 'package:prova_flutter/routes.dart';


void main() {
  runApp(const SecondPage());
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});
  
  get decoration => null;

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              color: Color.fromRGBO(252, 252, 252, 10), 
                ),
              ),
          //child: Center(),
        ), 
      );
  }
}