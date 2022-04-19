import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  final List produk = [
    "Lapis Legit",
    "Putu Ayu",
    "Selendang Mayang",
    "Kue Talam",
    "Bakpao Coklat",
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Application name
      title: 'Penugasan 2',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // A widget which will be started on application startup
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.home),
          title: Text('Produk'),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                  title: Text(produk[index], style: TextStyle(fontSize: 30)),
                  subtitle: Text('Klik untuk detail dari ' + produk[index], style: TextStyle(fontSize: 15)),
                  leading: CircleAvatar(
                    child: Text(produk[index][0], // ambil karakter pertama text
                        style: TextStyle(fontSize: 20)),
                  )),
            );
          },
          itemCount: produk.length,
        ),
      ),
    );
  }
}
