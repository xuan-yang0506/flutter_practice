import 'package:flutter/material.dart';
import 'package:test_app/drawer.dart';
import 'package:test_app/name_card_widget.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomePage extends StatefulWidget {
  static const String routeName = "/home";
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  // var myText = "Change My Name";
  // TextEditingController _nameController = TextEditingController();

  var url = "https://jsonplaceholder.typicode.com/photos";
  var data;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchData();
  }

  fetchData() async {
    var res = await http.get(url);
    data = jsonDecode(res.body);
    setState(() {
      
    });
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
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: () {Navigator.pop(context);},
          ),
        ],
        title: const Text("Awesome App"),
      ),
      body: data != null ? 
      ListView.builder(
        itemBuilder: (context, index){
          return ListTile(
            title: Text(data[index]["title"]),
            subtitle: Text("ID: ${data[index]["id"]}"),
            leading: Image.network(data[index]["url"]),
          );
        }, 
        itemCount: data.length,
      ) 
      : Center(
        child: CircularProgressIndicator(),
      ),
      drawer: MyDrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // myText = _nameController.text;
          // setState(() {

          // });
        },
        child: Icon(Icons.send),
      ),
    );
  }
}
