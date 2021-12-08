// ignore_for_file: file_names

import 'package:flutter/material.dart';

class BeginEarn extends StatelessWidget {
  const BeginEarn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Color.fromRGBO(159, 138, 138, 1)),
      body: Container(
        color: Color.fromRGBO(159, 138, 138, 1),
        child: Center(child: Text('Начни зарабатывать!'),),
      ),
    );
  }
}
