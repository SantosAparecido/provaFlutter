import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:prova_flutter/routes.dart';

class ListaView extends StatelessWidget {
  const ListaView();

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Shop',
      style: optionStyle,
    ),
    Text(
      'Explore',
      style: optionStyle,
    ),
    Text(
      'Cart',
      style: optionStyle,
    ),
    Text(
      'Favorite',
      style: optionStyle,
    ),
    Text(
      'Account',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        height: double.infinity,
        child: ListView(
          children: [
            Wrap(
              runSpacing: 30,
              spacing: 20,
              children: [
                Container(
                  height: 100.0,
                  width: 100.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    image: const DecorationImage(
                      image: AssetImage("assets/images/profile.png"),
                      fit: BoxFit.cover, //change image fill type
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 13,
                    ),
                    Wrap(
                      spacing: 5,
                      children: const [
                        Text("Mr. Lorem Ipsum",
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold)),
                        ImageIcon(AssetImage('assets/images/edit.png'),
                            color: Colors.green),
                      ],
                    ),
                    const Text(
                      "lorem.ipsum@gmail.com",
                      style: TextStyle(
                          color: Colors.black54,
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(height: 20),
            Card(
              child: ListTile(
                leading: ImageIcon(AssetImage('assets/images/orders.png')),
                title: Text('One-line with both widgets'),
                trailing: Icon(Icons.keyboard_arrow_right),
                textColor: Color(0xff181725),
                iconColor: Color(0xff181725),
              ),
            ),
            Card(
              child: ListTile(
                leading: ImageIcon(AssetImage('assets/images/my-details.png')),
                title: Text('One-line with both widgets'),
                trailing: Icon(Icons.keyboard_arrow_right),
                textColor: Color(0xff181725),
                iconColor: Color(0xff181725),
              ),
            ),
            Card(
              child: ListTile(
                leading:
                    ImageIcon(AssetImage('assets/images/delivery-address.png')),
                title: Text('One-line with both widgets'),
                trailing: Icon(Icons.keyboard_arrow_right),
                textColor: Color(0xff181725),
                iconColor: Color(0xff181725),
              ),
            ),
            Card(
              child: ListTile(
                leading:
                    ImageIcon(AssetImage('assets/images/payment-methods.png')),
                title: Text('One-line with both widgets'),
                trailing: Icon(Icons.keyboard_arrow_right),
                textColor: Color(0xff181725),
                iconColor: Color(0xff181725),
              ),
            ),
            Card(
              child: ListTile(
                leading: ImageIcon(AssetImage('assets/images/promo-card.png')),
                title: Text('One-line with both widgets'),
                trailing: Icon(Icons.keyboard_arrow_right),
                textColor: Color(0xff181725),
                iconColor: Color(0xff181725),
              ),
            ),
            Card(
              child: ListTile(
                leading:
                    ImageIcon(AssetImage('assets/images/notifications.png')),
                title: Text('One-line with both widgets'),
                trailing: Icon(Icons.keyboard_arrow_right),
                textColor: Color(0xff181725),
                iconColor: Color(0xff181725),
              ),
            ),
            Card(
              child: ListTile(
                leading: ImageIcon(AssetImage('assets/images/help.png')),
                title: Text('One-line with both widgets'),
                trailing: Icon(Icons.keyboard_arrow_right),
                textColor: Color(0xff181725),
                iconColor: Color(0xff181725),
              ),
            ),
            Card(
              child: ListTile(
                leading: ImageIcon(AssetImage('assets/images/about.png')),
                title: Text('One-line with both widgets'),
                trailing: Icon(Icons.keyboard_arrow_right),
                textColor: Color(0xff181725),
                iconColor: Color(0xff181725),
              ),
            ),
            SizedBox(
              height: 160,
            ),
            Container(
                height: 60,
                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.of(context)
                        .popAndPushNamed(RouterGenerator.listaCompras);
                  },
                  icon: Icon(
                    Icons.store,
                    color: Color.fromRGBO(83, 177, 177, 1),
                  ),
                  label: Text("Lista de Compras",
                      style: TextStyle(
                          color: Color.fromRGBO(83, 177, 177, 1),
                          fontSize: 14)),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(242, 243, 242, 1),
                  ),
                ))
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/images/shop.png')),
            label: 'Store',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/images/explore.png')),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/images/cart.png')),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/images/favorite.png')),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/images/account.png')),
            label: 'Account',
          ),
        ],
        currentIndex: _selectedIndex,
        showUnselectedLabels: true,
        unselectedItemColor: const Color(0xff181725),
        selectedItemColor: const Color(0xff53B175),
        onTap: _onItemTapped,
      ),
    );
  }
}
