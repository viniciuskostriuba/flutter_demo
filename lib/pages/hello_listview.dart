import 'package:flutter/material.dart';

class HelloListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView"),
      ),
      body: _body(),
    );
  }

  _body() {
    return Container(child: _listView());
  }

  _img(String img) {
    return Image.asset(
      img,
      fit: BoxFit.cover,
    );
    //width: 300,
    //height: 300,
    //fit: BoxFit.fill,
  }

  _listView() {
    return Container(
      //height: 300,
      margin: EdgeInsets.only(top: 20, bottom: 20),
      child: ListView(children: <Widget>[
        _img("assets/images/carro.png"),
        _img("assets/images/carro.png"),
        _img("assets/images/carro.png"),
        _img("assets/images/carro.png")
      ]),
    );
  }
}
