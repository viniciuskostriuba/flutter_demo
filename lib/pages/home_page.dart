// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Opaaia ",
          ),
        ),
      ),
      body: _body(),
    );
  }

  _body() {
    Container(
      color: Colors.white,
      child: Center(
        child: _img(),
      ),
    );
  }

  _text() {
    Text(
      "CORPITO",
      style: TextStyle(
        fontSize: 30,
        color: Colors.blue,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
        decoration: TextDecoration.underline,
      ),
    );
  }

  _img() {
    return Image.network(
        "http://portaldodog.com.br/cachorros/wp-content/uploads/2015/05/cachorro-sorrindo-02.jpg");
  }
}
