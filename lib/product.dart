import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Products', home: Main());
  }
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Products'),
      ),
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            var icon;
            var assets;
            return Padding(
              padding: const EdgeInsets.only(
                top: 10,
              ),
              child: ListTile(
                leading: Image.asset(assets / icon.png),
                trailing: Icon(Icons.delete),
                title: Text(
                  "Let's eat some food",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                subtitle: Text(
                  'Click for more detail',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            );
          }),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        icon: Icon(Icons.add),
        label: Text("Tambah"),
      ),
    );
  }
}
