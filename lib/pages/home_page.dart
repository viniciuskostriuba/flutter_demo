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
      body: _body(context),
    );
  }

  _body(context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      //height: size.height,
      color: Color.fromRGBO(255, 235, 59, 1),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[_text(), _pageView(), _column()],
      ),
    );
  }

  _column() {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            _button("ListView"),
            _button("Page 2"),
            _button("Page 3")
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            _button("Snack"),
            _button("Dialog"),
            _button("Toast")
          ],
        )
      ],
    );
  }

  _text() {
    return Text(
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

  _img(String img) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Image.asset(
        img,
        fit: BoxFit.cover,
      ),
      //width: 300,
      //height: 300,
      //fit: BoxFit.fill,
    );
  }

  _button(String text) {
    return RaisedButton(
        color: Colors.blue,
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        onPressed: () => _onClickOk());
  }

  void _onClickOk() {
    print("Clicou no botão");
  }

  _pageView() {
    return Container(
      height: 300,
      child: PageView(children: <Widget>[
        _img("assets/images/carro.png"),
        _img("assets/images/carro.png"),
        _img("assets/images/carro.png"),
        _img("assets/images/carro.png")
      ]),
    );
  }
}
