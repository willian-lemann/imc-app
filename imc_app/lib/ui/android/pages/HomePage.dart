import 'package:flutter/material.dart';
import 'package:imc_app/blocs/imc.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var imcbloc = new imcBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cálculo de IMC'),
      ),
      body: Stack(
        children: <Widget>[
          ListView(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(20),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Altura (cm)',
                  ),
                  keyboardType: TextInputType.number,
                  controller: imcbloc.heightController,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Peso (kg)',
                  ),
                  keyboardType: TextInputType.number,
                  controller: imcbloc.weightController,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  imcbloc.result,
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)),
                  color: Theme.of(context).primaryColor,
                  child: Text(
                    'Calcular',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    setState(() {
                      imcbloc.calculate();
                    });
                  },
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
