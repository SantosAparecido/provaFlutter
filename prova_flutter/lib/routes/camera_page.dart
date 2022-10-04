
import 'package:flutter/material.dart';
import 'package:prova_flutter/routes.dart';
import 'package:prova_flutter/routes/home_page.dart';

import '../widget/camera.dart';


class CameraPage extends StatelessWidget {
  const CameraPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          color: Color.fromRGBO(83,177, 117, 1),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.center,
                child: Image.asset('assets/images/nectar.png'),
              ),
              Container(
                width: 200,
                height: 20,
                margin: const EdgeInsets.only(top: 50.0),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: ListTile(
                    leading: Icon(Icons.camera_alt),
                    title: Text('Take a Picture'),
                    onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => CameraPage(),fullscreenDialog: true)),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 50.0),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 2, 207, 77), 
                  shadowColor: Colors.greenAccent,
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32.0)),
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: ((context) => HomePage())));
                    },
                    child: Text('Voltar'),
                ),
                  ),
                 
              ),
            ],
          )
        ),   
    );
  }
}



