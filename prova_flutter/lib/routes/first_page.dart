import 'dart:ffi';
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:prova_flutter/routes.dart';

import 'cameraPage.dart';


class FirstPage extends StatelessWidget {
  const FirstPage();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            color: Color.fromRGBO(83,177, 117, 1),
            child: Align(
            alignment: Alignment.center,
            child: Image.asset('assets/images/nectar.png'),
            ),
          ),
          ListTile(
            leading: Icon(Icons.camera_alt),
            title: Text('Teste'),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => cameraPage(),fullscreenDialog: true)),
          )
          
          ],  
      ),  
    );
  }
}



