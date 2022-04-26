import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:layout/home.dart';
import 'package:layout/product.dart';
import 'package:layout/transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Program Inventori',
      home: Main(),
    );
  }
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Product',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Transaction',
          ),
        ],
      ),
      tabBuilder: (BuildContext context, int index) {
        switch (index) {
          case 0:
            return Home();
          case 1:
            return Product();
          case 2:
            return Transaction();
          default:
            return Home;
        }
      },
    );
  }
}
