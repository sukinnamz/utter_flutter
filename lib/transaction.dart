import 'package:flutter/material.dart';

class Transaction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, title: 'Add Some', home: Main());
  }
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Add Product',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            )),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(begin: Alignment.topLeft, end: Alignment.bottomRight, colors: <Color>[
            Colors.blue,
            Colors.purpleAccent
          ])),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 10,
          left: 20,
          right: 20,
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: <Widget>[
          Text('Product Information',
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurpleAccent,
                decoration: TextDecoration.underline,
              )),
          Text('Product Images',
              style: const TextStyle(
                fontSize: 17,
              )),
          ConstrainedBox(
            constraints: BoxConstraints(minHeight: 50),
            child: Icon(
              Icons.add,
            ),
          ),
        ]),
      ),
    );
  }
}
