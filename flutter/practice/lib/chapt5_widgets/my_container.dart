//my_container.dart
import 'package:flutter/material.dart';

class MyContainerWidget extends StatelessWidget {
  const MyContainerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Knowledge Test',
          style: TextStyle(
            fontSize: 25,
            fontStyle: FontStyle.normal,
          ),
        ),
        backgroundColor: Colors.redAccent,
      ),
      body: Container(
        constraints: BoxConstraints.expand(
          height: Theme.of(context).textTheme.headline4!.fontSize! * 1.1 + 200.0,
        ),
        padding: const EdgeInsets.all(8.0),
        color: Colors.blue[600],
        alignment: Alignment.center,
        child: Text(
          'This is Container Widget',
          style: Theme.of(context).textTheme.headline4!.copyWith(color: Colors.white),
        ),
        transform: Matrix4.rotationZ(-0.2),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Add',
        backgroundColor: Colors.redAccent,
        child: Icon(Icons.add),
        onPressed: null,
      ),
    );
  }
}
