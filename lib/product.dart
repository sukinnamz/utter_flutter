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
                leading: Image.network(
                  "https://www.google.com/url?sa=i&url=https%3A%2F%2Ficon-icons.com%2Ficon%2Famong-us-player-red%2F156942&psig=AOvVaw11U_I0ANVyZDxfYa97lE5X&ust=1651030856289000&source=images&cd=vfe&ved=0CAwQjRxqFwoTCKi3-7XnsPcCFQAAAAAdAAAAABAD",
                ),
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
