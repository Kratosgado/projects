import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Register with your name"),),
        leading: const IconButton(
          icon: Icon(Icons.menu),
          onPressed: null,
        ),
      ),
      body: Container(
        margin: const EdgeInsets.all(20),
        color: Colors.blueAccent,
        child: const Text('Hello we are starting our app'),
      ),
    );
  }
}
