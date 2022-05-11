// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/hello_gridview.dart';
import 'package:flutter_application_1/pages/hello_listview.dart';
import 'package:flutter_application_1/pages/hello_page2.dart';
import 'package:flutter_application_1/pages/hello_page3.dart';
import 'package:flutter_application_1/utils/nav.dart';
import 'package:flutter_application_1/widgets/blue_button.dart';
import 'package:fluttertoast/fluttertoast.dart';

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
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            FloatingActionButton(
                child: Icon(Icons.add),
                onPressed: (() {
                  _onClickFab();
                })),
            SizedBox(
              width: 8,
            ),
            FloatingActionButton(
                child: Icon(Icons.favorite),
                onPressed: (() {
                  _onClickFab();
                })),
          ],
        ));
  }

  _onClickFab() {
    print("Adicionar");
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
        children: <Widget>[
          _text(),
          _pageView(),
          _buttons(),
        ],
      ),
    ));
  }

  _buttons() {
    return Builder(
      builder: (BuildContext context) {
        return Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                BlueButton("ListView",
                    onPressed: () =>
                        _onClickNavigator(context, HelloListView())),
                BlueButton("GridView",
                    onPressed: () =>
                        _onClickNavigator(context, HelloGridView())),
                BlueButton("Page 2",
                    onPressed: () => _onClickNavigator(context, HelloPage2())),
                BlueButton("Page 3",
                    onPressed: () => _onClickNavigator(context, HelloPage3())),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                BlueButton("Snack", onPressed: () => _onClickSnack(context)),
                BlueButton("Dialog", onPressed: () => _onClickDialog(context)),
                BlueButton("Toast", onPressed: _onClickToast)
              ],
            )
          ],
        );
      },
    );
  }

  _onClickSnack(context) {
    Scaffold.of(context).showSnackBar(
      SnackBar(
        content: Text("Ola"),
        action: SnackBarAction(
          textColor: Colors.yellow,
          label: "OK",
          onPressed: () {
            print("OK");
          },
        ),
      ),
    );
  }

  _onClickDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return WillPopScope(
            onWillPop: () async => false,
            child: AlertDialog(
              title: Text("Teste do Dialog"),
              actions: <Widget>[
                FlatButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Cancelar"),
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.pop(context);
                    print("Clicou em OK");
                  },
                  child: Text("OK"),
                ),
              ],
            ),
          );
        });
  }

  _onClickToast() {
    Fluttertoast.showToast(
        msg: "Cliquei no Toast",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 2,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
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
