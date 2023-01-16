// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:todo_flutter/exams/Dashboard.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _Login();
}

class _Login extends State<Login> {
  bool? _obsecuretxt;
  TextEditingController? _userController;
  TextEditingController? _passController;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    _obsecuretxt = true;
    _userController = TextEditingController();
    _passController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
        child: Form(
          key: _formKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage('/images/moonton.png'),
                      height: 250,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'LOGIN',
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 35, color: Colors.white),
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                      filled: true,
                      prefixIconColor: Colors.white,
                      fillColor: Color.fromARGB(255, 255, 195, 105),
                      prefixIcon: Icon(
                        Icons.people_alt_rounded,
                        size: 20,
                      ),
                      hintText: "Username",
                      hintStyle: TextStyle(fontSize: 15),
                      iconColor: Colors.black),
                ),
                SizedBox(
                  height: 30,
                ),
                TextFormField(
                  controller: _passController,
                  obscureText: _obsecuretxt!,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 20),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                      filled: true,
                      prefixIconColor: Colors.white,
                      fillColor: Color.fromARGB(255, 95, 191, 255),
                      prefixIcon: Icon(
                        Icons.lock,
                        size: 20,
                      ),
                      suffixIcon: InkWell(
                        child: Icon((_obsecuretxt == false)
                            ? Icons.remove_red_eye
                            : Icons.visibility_off),
                        onTap: () {
                          if (_obsecuretxt == false) {
                            _obsecuretxt = true;
                          } else {
                            _obsecuretxt = false;
                          }
                          setState(() {});
                        },
                      ),
                      hintText: "Password",
                      hintStyle: TextStyle(fontSize: 15),
                      iconColor: Colors.grey),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 80),
                  height: 45,
                  child: MaterialButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      splashColor: Colors.white,
                      color: Colors.orange,
                      child: Text("LOGIN",
                          style: TextStyle(color: Colors.white, fontSize: 16,)),
                      onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Dashboard()),
                          );
                      }),
                )
              ],
            ),
          ),
        ),
      )),
    );
  }
}
