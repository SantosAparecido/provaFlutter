import 'package:flutter/material.dart';
import 'package:prova_flutter/routes.dart';


class LoginPage extends StatefulWidget {
  const LoginPage();

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emaiilController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Container(
        padding: EdgeInsets.only(
          top: 60,
          left: 40,
          right: 40,
        ),
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            SizedBox(
              width: 128,
              height: 128,
              child: Image.asset("assets/images/cenoura2.png"),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              height: 40,
              alignment: Alignment.centerLeft,
              child: Text(
                "Loging",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            Container(
              height: 40,
              alignment: Alignment.centerLeft,
              child: Text(
                "Enter your emails and password",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            TextFormField(
              controller: _emaiilController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: "E-mail",
                labelStyle: TextStyle(
                  color: Color.fromRGBO(124,124,124,1),
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
              validator: (email) {
                if (email == null || email.isEmpty) {
                  return "Digite um email";
                }
                return null;
              },
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: _passwordController,
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Senha",
                labelStyle: TextStyle(
                  color: Color.fromRGBO(124,124,124,1),
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
              validator: (senha) {
                if (senha == null || senha.isEmpty) {
                  return "Digite sua senha";
                } else if (senha.length < 6) {
                  return " Digite uma senha mais forte";
                }
                return null;
              },
              style: TextStyle(fontSize: 20),
            ),
            Container(
              height: 40,
              alignment: Alignment.centerRight,
              child: TextButton(
                child: Text(
                  "Esqueceu a senha?",
                  textAlign: TextAlign.right,
                ),
                onPressed: () {},
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Container(
              height: 60,
              width: 40,
              child: ButtonTheme(
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 15, 163, 47)),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),

                        
                      ),
                    ),
                  ),
                  child: Text(
                    "Log In",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).popAndPushNamed(RouterGenerator.listaView);
                  },
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 40,
              alignment: Alignment.center,
              child: Row(
                children: [
                  SizedBox(width: 50),
                  Text("Don't have and account?", style: TextStyle(color: Color.fromRGBO(24, 23, 37, 1),fontSize: 14,),),
                  TextButton(
                child: Text(
                  "Signup",
                  style: TextStyle(
                      color: Color.fromARGB(255, 15, 163, 47),
                      fontSize: 14,
                    ),
                  textAlign: TextAlign.right,
                ),
                onPressed: () {
                },
              ),
                ]
              ),
            ),
          ],
        ),
      ),
    ),
  ); 
    
  }
}
