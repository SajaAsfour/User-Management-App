// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fire_base/get_users.dart';

class AddUserPage extends StatelessWidget {
  AddUserPage({super.key});
  var nameController = TextEditingController();
  var ageController = TextEditingController();
  CollectionReference users = FirebaseFirestore.instance.collection('Users');
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Add New User",
          style: TextStyle(fontFamily: "Times New Roman"),
        ),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
      body: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Name",
                style: TextStyle(fontFamily: "Times New Roman", fontSize: 18),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: nameController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter a name";
                  }
                  return null;
                },
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.teal)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.teal)),
                  errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.red)),
                  focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.red)),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Age",
                style: TextStyle(fontFamily: "Times New Roman", fontSize: 18),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: ageController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter an age";
                  }
                  if (int.tryParse(value) == null) {
                    return "Please enter a valid age";
                  }
                  return null;
                },
                decoration: InputDecoration(
                  focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.red)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.teal)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.teal)),
                  errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.red)),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(Colors.teal)),
                  onPressed: () {
                    if (formKey.currentState?.validate() ?? false) {
                      addUser();
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => GetUsersPage()),
                      );
                    }
                  },
                  child: Text(
                    "Add User",
                    style: TextStyle(
                        fontFamily: "Times New Roman",
                        fontSize: 18,
                        color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> addUser() {
    // Call the user's CollectionReference to add a new user
    return users
        .add({
          'name': nameController.text, // John Doe
          'age': ageController.text // 42
        })
        .then((value) => print("User Added"))
        .catchError((error) => print("Failed to add user: $error"));
  }
}
