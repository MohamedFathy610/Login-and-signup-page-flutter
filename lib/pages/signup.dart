import 'package:flutter/material.dart';
import 'package:untitled3/pages/login.dart';
import 'package:untitled3/pages/home_screen.dart';
class Signup extends StatefulWidget {
  const Signup({super.key});


  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final _formKey = GlobalKey<FormState>();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Signup',
      home: Scaffold(
        appBar: AppBar(title: Text('signup')),
        body: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Sign up",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.w500),
              ),
              Text("Creat your acount ", style: TextStyle(fontSize: 15)),
              SizedBox(height: 30),
              TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  hintText: "Username",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              SizedBox(height: 10),
              TextFormField(
                validator: (value) {
                  if (value == '' || value == null) {
                    return 'The field is empty';
                  }
                },
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  hintText: "Email",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              SizedBox(height: 10),
              TextFormField(
                validator: (value) {
                  if (value == '' || value == null) {
                    return 'The field is empty';
                  }
                },
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  hintText: "Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              SizedBox(height: 10),
              TextFormField(
                validator: (value) {
                  if (value == '' || value == null) {
                    return 'The field is empty';
                  }

                },
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  hintText: "Confirm password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              SizedBox(height: 10),
              MaterialButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return HomePage();
                        },
                      ),
                    );
                  }
                },
                child: Text("Sign up", style: TextStyle(color: Colors.white)),
                minWidth: 1000,
                height: 60,
                color: Colors.purple,
                shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              SizedBox(height: 30),
              Text("Or"),
              SizedBox(height: 30),
              MaterialButton(
                onPressed: () {},
                child: Text(
                  "Sign in with Google",
                  style: TextStyle(color: Colors.purple),
                ),
                minWidth: 1000,
                height: 60,
                color: Colors.white,
                shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already  have an acount ? "),
                  MaterialButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return Login();
                          },
                        ),
                      );
                    },
                    child: Text(
                      "login",
                      style: TextStyle(color: Colors.purple),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}