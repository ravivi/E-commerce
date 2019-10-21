import 'package:flutter/material.dart';

class Calculatrice extends StatefulWidget {
  @override
  _CalculatriceState createState() => _CalculatriceState();
}

class _CalculatriceState extends State<Calculatrice> {

  String calcul = '0';
  List inProgress = List();
  @override
  Widget build(BuildContext context) {
    final keyboardWidth = MediaQuery.of(context).size.width - 20;
    final heightButton = MediaQuery.of(context).size.height * (2 / 3) / 4;

    Widget calculatorNumButton(value) {
      return MaterialButton(
        height: heightButton,
        minWidth: keyboardWidth / 4,
        textColor: Colors.white,
        color: Colors.black45,
        onPressed: () {
          setState(() {
            inProgress.add(value);
            calcul+= value.toString();
          });
        },
        child: Text(
          value.toString(),
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
      );
    }

    Widget calculatorOperatorButton(String value,Color color) {
        return MaterialButton(
          minWidth: keyboardWidth / 4,
          height: heightButton,
          textColor: Colors.white,
          color: color,
          onPressed: () {
            calcul = '';
            switch(value) {
              case 'DEL': if (inProgress.isNotEmpty) inProgress.removeLast();
              break;
              case '=':
                if (inProgress.length > 2 && (inProgress.contains('+') || inProgress.contains('-') || inProgress.contains('/') || inProgress.contains('*'))) {
                  
                }
              break;

              default: inProgress.add(value);

            }

            setState(() {
              inProgress.forEach((v) {
                calcul+= v.toString();
              });
            });

            print(inProgress);

          },
          child: Text(
            value.toString(),
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
        );
    }
    return SafeArea(
      top: true,
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Flexible(flex: 1, fit: FlexFit.tight,
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Text(calcul.toString(), style: TextStyle(fontSize: 40)),
                  ),
            )),
            Flexible(
                fit: FlexFit.tight,
                flex: 2,
                child: Stack(
                  fit: StackFit.expand,
                  children: <Widget>[

                    //clavier
                    Container(
                      width: keyboardWidth,
                      child: Wrap(
                        children: <Widget>[
//                          calculatorNumButton(value: 7, store: calcul),
                          calculatorNumButton(7),
                          calculatorNumButton(8),
                          calculatorNumButton(9),
                          calculatorOperatorButton('DEL',Colors.blueGrey),
                          calculatorNumButton(4),
                          calculatorNumButton(5),
                          calculatorNumButton(6),
                          calculatorOperatorButton('/',Colors.blueGrey),
                          calculatorNumButton(1),
                          calculatorNumButton(2),
                          calculatorNumButton(3),
                          calculatorOperatorButton('x',Colors.blueGrey),
                          calculatorOperatorButton('.',Colors.black45),
                          calculatorNumButton(0),
                          calculatorOperatorButton('=',Colors.black45),
                          calculatorOperatorButton('+',Colors.blueGrey),
                        ],
                      ),
                    ),

                    //bord vert
                    Positioned(
                      top: 0,
                      right: 0,
                      child: Container(
                        height: heightButton * 4,
                        width: 20,
                        color: Colors.green,
                      ),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
