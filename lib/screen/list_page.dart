import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          )
        ],
        backgroundColor: Color.fromARGB(255, 28, 28, 28),
        title: Text("Kategori Produk"),
        titleSpacing: 0,
      ),
      body: ListView(
        children: [
          ListTile(
            trailing: Icon(Icons.navigate_next),
            title:
                Text("FASHION", style: TextStyle(fontWeight: FontWeight.bold)),
            subtitle: Text("All about fashion"),
            tileColor: Color.fromARGB(255, 134, 133, 129),
            leading: CircleAvatar(
              backgroundColor: Colors.transparent,
              foregroundColor: Colors.white,
              child: Icon(Icons.ac_unit_sharp),
            ),
            onTap: () {},
          ),
          Divider(
            color: Colors.black,
          ),
          ListTile(
            trailing: Icon(Icons.navigate_next),
            title: Text(
              "BEAUTY",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              "All about beauty",
            ),
            tileColor: Color.fromARGB(255, 134, 133, 129),
            leading: CircleAvatar(
              backgroundColor: Colors.transparent,
              foregroundColor: Colors.white,
              child: Icon(Icons.ac_unit_sharp),
            ),
            onTap: () {},
          ),
          Divider(
            color: Colors.black,
          ),
          ListTile(
            trailing: Icon(Icons.navigate_next),
            title:
                Text("MAKEUP", style: TextStyle(fontWeight: FontWeight.bold)),
            subtitle: Text("All about makeup an tutorials"),
            tileColor: Color.fromARGB(255, 134, 133, 129),
            leading: CircleAvatar(
              backgroundColor: Colors.transparent,
              foregroundColor: Colors.white,
              child: Icon(Icons.ac_unit_sharp),
            ),
            onTap: () {},
          ),
          Divider(
            color: Colors.black,
          ),
          ListTile(
            trailing: Icon(Icons.navigate_next),
            title: Text("DRESS", style: TextStyle(fontWeight: FontWeight.bold)),
            subtitle: Text("All about gorgeous dresses"),
            tileColor: Color.fromARGB(255, 134, 133, 129),
            leading: CircleAvatar(
              backgroundColor: Colors.transparent,
              foregroundColor: Colors.white,
              child: Icon(Icons.ac_unit_sharp),
            ),
            onTap: () {},
          ),
          Divider(
            color: Colors.black,
          ),
          ListTile(
            trailing: Icon(Icons.navigate_next),
            title: Text(
              "T-SHIRT",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text("All about t-shirt"),
            tileColor: Color.fromARGB(255, 134, 133, 129),
            leading: CircleAvatar(
              backgroundColor: Colors.transparent,
              foregroundColor: Colors.white,
              child: Icon(Icons.ac_unit_sharp),
            ),
            onTap: () {},
          ),
          Divider(
            color: Colors.black,
          ),
          ListTile(
            trailing: Icon(Icons.navigate_next),
            title: Text(
              "SNEAKERS",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text("All about sneakers"),
            tileColor: Color.fromARGB(255, 134, 133, 129),
            leading: CircleAvatar(
              backgroundColor: Colors.transparent,
              foregroundColor: Colors.white,
              child: Icon(Icons.ac_unit_sharp),
            ),
            onTap: () {},
          ),
          Divider(
            color: Colors.black,
          ),
          ListTile(
            trailing: Icon(Icons.navigate_next),
            title: Text(
              "ACCESSORIES",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text("All about accessories"),
            tileColor: Color.fromARGB(255, 134, 133, 129),
            leading: CircleAvatar(
              backgroundColor: Colors.transparent,
              foregroundColor: Colors.white,
              child: Icon(Icons.ac_unit_sharp),
            ),
            onTap: () {},
          ),
          Divider(
            color: Colors.black,
          ),
          ListTile(
            trailing: Icon(Icons.navigate_next),
            title: Text(
              "SPORTS",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text("All about sports"),
            tileColor: Color.fromARGB(255, 134, 133, 129),
            leading: CircleAvatar(
              backgroundColor: Colors.transparent,
              foregroundColor: Colors.white,
              child: Icon(Icons.ac_unit_sharp),
            ),
            onTap: () {},
          ),
          Divider(
            color: Colors.black,
          ),
          ListTile(
            trailing: Icon(Icons.navigate_next),
            title: Text(
              "WOMAN",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text("All about woman stuffs"),
            tileColor: Color.fromARGB(255, 134, 133, 129),
            leading: CircleAvatar(
              backgroundColor: Colors.transparent,
              foregroundColor: Colors.white,
              child: Icon(Icons.ac_unit_sharp),
            ),
            onTap: () {},
          ),
          Divider(
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
