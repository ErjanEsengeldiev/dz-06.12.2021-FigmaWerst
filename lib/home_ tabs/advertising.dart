import 'package:flutter/material.dart';

class Advertising extends StatelessWidget {
  const Advertising({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Color.fromRGBO(159, 138, 138, 1)),
      body: Container(
        color: Color.fromRGBO(159, 138, 138, 1),
        child: Center(child: Text('Реклама'),),
      ),
    );
  }
}