// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/hello_page1.dart';
import 'package:flutter_application_1/pages/hello_page2.dart';
import 'package:flutter_application_1/pages/hello_page3.dart';

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
        // color: Colors.green,
        // padding: const EdgeInsets.all(16),
        //height: size.height,
        child: Container(
      color: Color.fromRGBO(255, 235, 59, 1),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[_text(), _pageView(), _buttons(context)],
      ),
    ));
  }

  _buttons(context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            _button(context, "ListView",
                () => _onClickNavigator(context, HelloPage1())),
            _button(context, "Page 2",
                () => _onClickNavigator(context, HelloPage2())),
            _button(context, "Page 3",
                () => _onClickNavigator(context, HelloPage3())),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            _button(context, "Snack", _onClickSnack),
            _button(context, "Dialog", _onClickDialog),
            _button(context, "Toast", _onClickToast)
          ],
        )
      ],
    );
  }

  _onClickSnack() {}

  _onClickDialog() {}

  _onClickToast() {}

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

  _button(context, String text, Function() onPressed) {
    return RaisedButton(
        color: Colors.blue,
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        onPressed: onPressed);
  }

  void _onClickNavigator(BuildContext context, Widget page) {
    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
      return page;
    }));
  }

  _pageView() {
    return Container(
      height: 300,
      margin: EdgeInsets.only(top: 20, bottom: 20),
      child: PageView(children: <Widget>[
        _img("assets/images/carro.png"),
        _img("assets/images/carro.png"),
        _img("assets/images/carro.png"),
        _img("assets/images/carro.png")
      ]),
    );
  }
}
