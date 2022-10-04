import 'package:flutter/material.dart';
import 'package:prova_flutter/routes.dart';


void main() {
  runApp(const HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  
  get decoration => null;

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/guy.png'), 
                  fit: BoxFit.cover,
                ),
              ),
          child: Center(
            
            child: ListView (
            padding: const EdgeInsets.only(top:450.0),
            children: <Widget>[
              Align(
                alignment: Alignment.center,
                child: Image.asset('assets/images/group.png'),
              ),
              Align(
                alignment: Alignment.center,
                child: Image.asset('assets/images/welcome.png'),
              ),
              Align(
                alignment: Alignment.center,
                child: Text('Get your groceries in as fast as one hour', style: TextStyle(color: Color.fromRGBO(252, 252, 252, 1), fontSize: 16)),
              ),
              Container(
                  margin: const EdgeInsets.only(top: 25.0),
                  child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(83, 177, 117,1), 
                  shadowColor: Colors.greenAccent,
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32.0)),
                  minimumSize: Size(80, 67),
                ),
                onPressed: () {
                  Navigator.of(context).popAndPushNamed(RouterGenerator.loginPage);
                },child: Text('Get Started', style: TextStyle(color: Color.fromRGBO(255, 249, 255, 1), fontSize: 18)),
              )
              )
              
                ]
          ),
            ),
        ),
        
      ),
    );
  }
}