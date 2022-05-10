// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/hello_gridview.dart';
import 'package:flutter_application_1/pages/hello_listview.dart';
import 'package:flutter_application_1/pages/hello_page2.dart';
import 'package:flutter_application_1/pages/hello_page3.dart';
import 'package:flutter_application_1/utils/nav.dart';
import 'package:flutter_application_1/widgets/blue_button.dart';

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
            BlueButton("ListView",
                onPressed: () => _onClickNavigator(context, HelloListView())),
            BlueButton("GridView",
                onPressed: () => _onClickNavigator(context, HelloGridView())),
            BlueButton("Page 2",
                onPressed: () => _onClickNavigator(context, HelloPage2())),
            BlueButton("Page 3",
                onPressed: () => _onClickNavigator(context, HelloPage3())),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            BlueButton("Snack", onPressed: _onClickSnack),
            BlueButton("Dialog", onPressed: _onClickDialog),
            BlueButton("Toast", onPressed: _onClickToast)
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

  // _button(String text, Function() onPressed) {
  //   return BlueButton(text, onPressed: onPressed);
  // }

  void _onClickNavigator(BuildContext context, Widget page) async {
    String s = await push(context, page);
    print(">>$s");
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
