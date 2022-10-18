import 'package:flutter/material.dart';
import 'beranda.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  static List<Widget> pages = <Widget>[
    Beranda(),
    Container(
      color: Colors.green,
    ),
    Container(
      color: Colors.blue,
    ),
    Container(
      color: Colors.green,
    ),
    Container(
      color: Colors.blue,
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
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            "assets/yubis-logo.png",
          ),
        ),
        actions: [ //add
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {}
          ),
          IconButton(onPressed: (){}, icon: Icon(Icons.task))
        ]
      ),
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Theme.of(context).textSelectionTheme.selectionColor,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.store),
            label: 'Produk',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.bookmark_border,),
            label: 'Promo',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.feed),
            label: 'Transaksi',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Akun',
          ),
        ],
      ),
    );
  }
}
