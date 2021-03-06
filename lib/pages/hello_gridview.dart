import 'package:flutter/material.dart';

class Dog {
  String nome;
  String foto;

  Dog(this.nome, this.foto);
}

class HelloGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GridView"),
      ),
      body: _body(),
    );
  }

  _body() {
    List<Dog> dogs = [
      Dog("Carrinho", "assets/images/carro.png"),
      Dog("Carro", "assets/images/carro.png"),
      Dog("Mustang", "assets/images/carro.png"),
      Dog("Mumu", "assets/images/carro.png"),
      Dog("Carrinho", "assets/images/carro.png"),
      Dog("Carro", "assets/images/carro.png"),
      Dog("Mustang", "assets/images/carro.png"),
      Dog("Mumu", "assets/images/carro.png"),
      Dog("Carrinho", "assets/images/carro.png"),
      Dog("Carro", "assets/images/carro.png"),
      Dog("Mustang", "assets/images/carro.png"),
      Dog("Mumu", "assets/images/carro.png"),
      Dog("Mustang", "assets/images/carro.png"),
      Dog("Mumu", "assets/images/carro.png"),
      Dog("Carrinho", "assets/images/carro.png"),
      Dog("Carro", "assets/images/carro.png"),
      Dog("Mustang", "assets/images/carro.png"),
      Dog("Mustang", "assets/images/carro.png"),
      Dog("Mumu", "assets/images/carro.png"),
      Dog("Carrinho", "assets/images/carro.png"),
      Dog("Carro", "assets/images/carro.png"),
      Dog("Mustang", "assets/images/carro.png")
    ];
    return GridView.builder(
      itemCount: dogs.length,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (context, index) {
        Dog dog = dogs[index];
        return Stack(
          fit: StackFit.expand,
          children: <Widget>[
            _img(dog.foto),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                margin: EdgeInsets.all(12),
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: Colors.black45,
                    borderRadius: BorderRadius.circular(16)),
                child: Text(
                  dog.nome,
                  style: TextStyle(fontSize: 26, color: Colors.white),
                ),
              ),
            )
          ],
        );
      },
    );
    //return Column(children: <Widget>[
    //Expanded(flex: 7, child: _listView()),
    //Expanded(flex: 3, child: _listView()),
    //]);
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

  // _listView() {
  //   return Container(
  //     //height: 300,
  //     //margin: EdgeInsets.only(top: 20, bottom: 20),
  //     child: ListView(itemExtent: 250, children: imgs),
  //   );
  // }
}
