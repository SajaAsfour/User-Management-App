// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_fire_base/add_user.dart';
import 'package:flutter_fire_base/get_users.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Start Page",
          style: TextStyle(fontFamily: "Times New Roman", fontSize: 30),
        ),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 100),
          child: Column(
            children: [
              Container(
                height: 200,
                child: Image.asset(
                  "assets/images/users.png",
                  fit: BoxFit
                      .cover, // Optionally adjust the fit to the container size
                ),
              ),
              SizedBox(height: 10,),
              Center(
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(Colors.teal)),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => GetUsersPage()),
                    );
                  },
                  child: Text(
                    "See the users",
                    style: TextStyle(
                        fontFamily: "Times New Roman",
                        fontSize: 18,
                        color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(Colors.teal)),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => AddUserPage()),
                    );
                  },
                  child: Text(
                    "Add Users",
                    style: TextStyle(
                        fontFamily: "Times New Roman",
                        fontSize: 18,
                        color: Colors.white),
                  ),
                ),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
