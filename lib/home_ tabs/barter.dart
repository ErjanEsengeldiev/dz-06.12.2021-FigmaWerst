import 'package:flutter/material.dart';

class Barter extends StatelessWidget {
  const Barter({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Color.fromRGBO(159, 138, 138, 1)),
      body: Container(
        color: const Color.fromRGBO(159, 138, 138, 1),
        child: const Center(child: Text('Бартер'),),
      ),
    );
  }
}