import 'package:flutter/material.dart';
import 'package:prova_flutter/routes.dart';

void main() {
  runApp(const ListVie());
}

class ListVie extends StatelessWidget {
  const ListVie({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: const ListViewHome());
  }
}

class ListViewHome extends StatelessWidget {
  const ListViewHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: ListView(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Image.asset('assets/images/profile.png', scale: 1.2),
                    SizedBox(width: 30),
                    Image.asset("assets/images/profileInfo.png", scale: 1.2),
                      ],
                    ),
              ],
            ),
                Card(
                  child: ListTile(
                    leading: Icon(Icons.shopping_bag_outlined),
                    title: Text('Orders'),
                    trailing: Icon(Icons.keyboard_arrow_right),
                    textColor: Color(0xff181725),
                    iconColor: Color(0xff181725),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Icon(Icons.person),
                    title: Text('My Details'),
                    trailing: Icon(Icons.keyboard_arrow_right),
                    textColor: Color(0xff181725),
                    iconColor: Color(0xff181725),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Icon(Icons.edit_location_alt_outlined),
                    title: Text('Delivery Address'),
                    trailing: Icon(Icons.keyboard_arrow_right),
                    textColor: Color(0xff181725),
                    iconColor: Color(0xff181725),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Icon(Icons.shopping_bag_outlined),
                    title: Text('Payment Methods'),
                    trailing: Icon(Icons.keyboard_arrow_right),
                    textColor: Color(0xff181725),
                    iconColor: Color(0xff181725),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: ImageIcon(AssetImage('assets/images/Promo Cord icon.png')),
                    title: Text('Promo Cord'),
                    trailing: Icon(Icons.keyboard_arrow_right),
                    textColor: Color(0xff181725),
                    iconColor: Color(0xff181725),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Icon(Icons.circle_notifications),
                    title: Text('Notifications'),
                    trailing: Icon(Icons.keyboard_arrow_right),
                    textColor: Color(0xff181725),
                    iconColor: Color(0xff181725),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Icon(Icons.help_outline),
                    title: Text('Help'),
                    trailing: Icon(Icons.keyboard_arrow_right),
                    textColor: Color(0xff181725),
                    iconColor: Color(0xff181725),
                  ),
                ),
                Card(
                  
                  child: ListTile(
                    leading: ImageIcon(AssetImage('assets/images/about icon.png')),
                    title: Text('About'),
                    trailing: Icon(Icons.keyboard_arrow_right),
                    textColor: Color(0xff181725),
                    iconColor: Color(0xff181725),
                  ),
                ),
                SizedBox(
                  height: 300,
                  ),
                  Row(children: [
                  ElevatedButton(
                  onPressed: (){
                    Navigator.of(context).popAndPushNamed(RouterGenerator.myApp);
                  },
                  child: Text("Lista de Compras", style: TextStyle(color: Color.fromRGBO(83, 177, 177, 1), fontSize: 14)),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(242, 243, 242, 1),
                      ),
                  ),
                    ElevatedButton.icon(
                      onPressed: (){}, 
                      icon: Icon(
                        Icons.logout,
                        color: Color.fromRGBO(83, 177, 177, 1),
                      ),
                      label: Text("Log Out", style: TextStyle(color: Color.fromRGBO(83, 177, 177, 1), fontSize: 14)),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromRGBO(242, 243, 242, 1),
                        
                          ),
                      ),
                  ] 
                  ),
                
                
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Image.asset('assets/images/bottombar.png'),
                ),
              ],
            ),
      ),
    );
  }
}
