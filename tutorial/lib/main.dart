import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  // WidgetsApp
  // MaterialApp
  // CupertinoApp
  runApp(MaterialApp(
    home: HomePage(),
    theme: ThemeData(
      primarySwatch: Colors.purple,
    ),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var myText = "Change My Name";
  TextEditingController _nameController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text("Awesome App"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Card(
              child: Column(
                children: <Widget>[
                  Image.asset(
                    "assets/bg.jpeg",
                    // width: 100,
                    // height: 100,
                    // fit: BoxFit.cover,
                    // fit: BoxFit.fitWidth,
                    // fit: BoxFit.fitHeight,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    myText,
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20 ,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextField(
                      controller: _nameController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Enter some text",
                        labelText: "Name"
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      drawer: Drawer(
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
             ListTile(
               leading: Icon(Icons.email),
               title: Text("Email"),
               subtitle: Text("seanyang0506@gmail.com"),
               trailing: Icon(Icons.edit),
             )
           ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          myText = _nameController.text;
          setState(() {

          });
        },
        child: Icon(Icons.send),
      ),
    );
  }
}
