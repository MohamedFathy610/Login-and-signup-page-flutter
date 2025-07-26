import 'package:flutter/material.dart';
import 'package:untitled3/pages/home_screen.dart';



class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _MyAppState();
}

class _MyAppState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text('Login ')),
          body: Container(
            child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment:
                  MainAxisAlignment.center, //علشان اخلي كل حاجة في النص

                  children: [
                             // الجمل الي في الاول
                  Text(
                  "Welcome back",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.w500),
                ),
                Text(
                  "Enter your info to login ",
                  style: TextStyle(fontSize: 15),
                ),
                SizedBox(height: 100),
                // username
                TextFormField(
                  validator: (value) {
                    if (value == '' || value == null) {
                      return 'The field is empty';
                    }
                  },
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    hintText: "Username",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                //password
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
                             //زرار تسجيل الدخول
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
            child: Text("Login", style: TextStyle(color: Colors.white)),
            minWidth: 1000,
            height: 60,
            color: Colors.purple,
            shape: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          SizedBox(height: 120),
                        // نسيت الباس
      Text(
      "Forget password ?",
      style: TextStyle(color: Colors.purple),
    ),
    SizedBox(height: 50),
                   // عندك حساب
    Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Text("Dont have an acount ? "),
    MaterialButton(
    onPressed: () {
    Navigator.push(
    context,
    MaterialPageRoute(
    builder: (context) {
    return HomePage();
    },
    ),
    );
    },
    child: Text(
    "signup",
    style: TextStyle(color: Colors.purple),
    ),
    ),
    ],
    ),
    ],
    ),
    ),
    ),
    ),
    );
  }
}