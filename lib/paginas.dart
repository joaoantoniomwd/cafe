import 'package:flutter/material.dart';

class Cardapio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Image.asset(
            'assets/imagens/bgcafe1.jpg',
            width: double.infinity,
            fit: BoxFit.fill,
          ),
          Container(
            alignment: Alignment.topCenter,
            child: Text(
              'Cardápio',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                height: 2,
              ),
            ),
          ),
          Container(
            alignment: Alignment.topCenter,
            child: Text(
              'Café expresso R\$5,00',
              style: TextStyle(
                fontSize: 16,
                height: 5,
              ),
            ),
          ),
          Container(
            alignment: Alignment.topCenter,
            child: Text(
              'Café com Leite R\$6,00',
              style: TextStyle(
                fontSize: 16,
                height: 7,
              ),
            ),
          ),
          Container(
            alignment: Alignment.topCenter,
            child: Text(
              'Capuccino R\$9,00',
              style: TextStyle(
                fontSize: 16,
                height: 9,
              ),
            ),
          ),
          Container(
            alignment: Alignment.topCenter,
            child: Text(
              'Leite com Nescau R\$2,50',
              style: TextStyle(
                fontSize: 16,
                height: 11,
              ),
            ),
          ),
          Container(
            alignment: Alignment.topCenter,
            child: Text(
              'Chá R\$1,00',
              style: TextStyle(
                fontSize: 16,
                height: 13,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Reservar extends StatelessWidget {
  int codigoReserva = 0;

  alertaReservar(BuildContext context) {
    Widget okButton = FlatButton(
      child: Text("OK"),
      onPressed: () {
        Navigator.pop(context, true);
      },
    );

    return showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return AlertDialog(
            title: Text("Reserva efetuada com sucesso!"),
            content: Text("Código da reserva: $codigoReserva"),
            actions: [
              okButton,
            ],
            elevation: 24.0,
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Image.asset(
            'assets/imagens/bgcafe2.jpg',
            width: double.infinity,
            fit: BoxFit.fill,
          ),
          Container(
            alignment: Alignment.topCenter,
            child: Text(
              'Efetuar Reserva',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                height: 2,
                color: Colors.white,
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: Column(
              children: [
                Divider(
                  height: 120,
                ),
                FlatButton(
                  padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0)),
                  color: Colors.lightBlue,
                  textColor: Colors.white,
                  onPressed: () {
                    codigoReserva++;
                    alertaReservar(context);
                  },
                  child: Text(
                    'Reservar',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Sobre extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      color: Colors.blueGrey,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          Divider(height: 15),
          Text(
            'Três Cozinheiros Café',
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.lightGreen),
          ),
          Divider(height: 15),
          Text(
            'Aplicação desenvolvida pelo aluno:',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(
            'João Antonio Morgado Won Doelinger',
            style: TextStyle(fontSize: 20),
          ),
          Divider(height: 15),
          Text(
            'Matéria: ',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(
            'Desenvolvimento para',
            style: TextStyle(fontSize: 20),
          ),
          Text(
            'Dispositivos Móveis',
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}
