// ignore_for_file: prefer_const_constructors

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class GetUsersPage extends StatefulWidget {
  GetUsersPage({super.key});

  @override
  State<GetUsersPage> createState() => _GetUsersPageState();
}

class _GetUsersPageState extends State<GetUsersPage> {
  List users = [];
  @override
  void initState() {
    super.initState();
    getUsersFromDataBase();
  }

  void getUsersFromDataBase() async {
    var snapshot = await FirebaseFirestore.instance.collection('Users').get();
    users.addAll(snapshot.docs);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
        title: Text(
          "Users",
          style: TextStyle(
            fontFamily: "Times New Roman",
          ),
        ),
      ),
      body: GridView.builder(
          itemCount: users.length,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context, index) {
            return ListTile(
              textColor: Colors.teal,
              title: Text(
                users[index]['name'],
                style: TextStyle(fontFamily: "Times New Roman", fontSize: 17),
              ),
              subtitle: Text(
                users[index]['age'],
                style: TextStyle(fontFamily: "Times New Roman", fontSize: 15),
              ),
            );
          }),
    );
  }
}
