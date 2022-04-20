import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: const EdgeInsets.all(0),
        children: <Widget>[
          // DrawerHeader(
          //   child: Text("Hi I am a drawer"),
          //   decoration: BoxDecoration(color: Colors.purple),
          // ),
          const UserAccountsDrawerHeader(
            accountName: Text("Sean Yang"),
            accountEmail: Text("seanyang0506@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://i1.hdslb.com/bfs/archive/b0d78f843d27b5ccfbc03545714e93ac89296b42.jpg"),
            ),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Title"),
            subtitle: Text("Developer"),
            trailing: Icon(Icons.edit),
            onTap: () {},
          ),
          const ListTile(
            leading: Icon(Icons.email),
            title: Text("Email"),
            subtitle: Text("seanyang0506@gmail.com"),
            trailing: Icon(Icons.edit),
          )
        ],
      ),
    );
  }
}
