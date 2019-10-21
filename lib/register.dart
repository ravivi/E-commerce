import 'package:flutter/material.dart';

class RegisterPsge extends StatefulWidget {
  @override
  _RegisterPsgeState createState() => _RegisterPsgeState();
}

class _RegisterPsgeState extends State<RegisterPsge>
    with SingleTickerProviderStateMixin {
  Animation _animation;
  AnimationController _animationController;
  double _width = 30;
  double _height = 60;

  Color mainColor = Color.fromRGBO(35, 59, 137, 1);
  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500));
    _animation =
        Tween<double>(begin: _width, end: 150).animate(_animationController);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Stack(
          // fit: StackFit.expand,
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                    height: size.height / 4,
                    child: Image.asset(
                        'images/ferra.png')),
                SizedBox(height: 20),
                Container(
                  height: size.height*3  / 4,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 40, bottom: 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                        
                          width: size.width - 70,
                          padding: EdgeInsets.all(30),
                          decoration: BoxDecoration(
                              color: mainColor,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(50),
                              )),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30)),
                                  color: Colors.white,
                                ),
                                child: TextField(
                                  onChanged: (str) {
                                    setState(() {
                                      _width = 250;
                                    });
                                  },
                                  textAlign: TextAlign.center,
                                  decoration: InputDecoration(
                                      hintText: 'Nom',
                                      hintStyle: TextStyle(
                                          color: Color.fromRGBO(35, 59, 137, 1),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(30)))),
                                ),
                              ),
                              SizedBox(height: 15),
                              AnimatedContainer(
                                width: _width,
                                height: _height,
                                curve: Curves.linear,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30)),
                                  color: Colors.white,
                                ),
                                duration: Duration(seconds: 3),
                                child: TextField(
                                  textAlign: TextAlign.center,
                                  decoration: InputDecoration(
                                      hintText: '',
                                      hintStyle: TextStyle(
                                          color: Colors.deepPurple,
                                          fontWeight: FontWeight.bold),
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(30)))),
                                ),
                              ),
                              SizedBox(height: 15),
                              AnimatedContainer(
                                 width: _width,
                                height: _height,
                                curve: Curves.linear,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30)),
                                  color: Colors.white,
                                ),
                                duration: Duration(seconds: 3),
                                child: TextField(
                                  // onChanged: (str) {
                                  //   setState(() {
                                  //     _width = 250;
                                  //   });
                                  // },
                                  textAlign: TextAlign.center,
                                  decoration: InputDecoration(
                                      hintText: '',
                                      hintStyle: TextStyle(
                                          color: Colors.deepPurple,
                                          fontWeight: FontWeight.bold),
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(30)))),
                                ),
                              ),
                              SizedBox(height: 15),
                              AnimatedContainer(
                                width: _width,
                                height: _height,
                                curve: Curves.linear,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30)),
                                  color: Colors.white,
                                ),
                                duration: Duration(seconds: 3),
                                child: TextField(
                                  // onChanged: (str) {
                                  //   setState(() {
                                  //     _width = 250;
                                  //   });
                                  // },
                                  textAlign: TextAlign.center,
                                  decoration: InputDecoration(
                                      hintText: '',
                                      hintStyle: TextStyle(
                                          color: Colors.deepPurple,
                                          fontWeight: FontWeight.bold),
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(30)))),
                                ),
                              ),
                              SizedBox(height: 15),
                              AnimatedContainer(
                                width: _width,
                                height: _height,
                                curve: Curves.linear,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30)),
                                  color: Colors.white,
                                ),
                                duration: Duration(seconds: 3),
                                child: TextField(
                                  textAlign: TextAlign.center,
                                  decoration: InputDecoration(
                                      hintText: '',
                                      hintStyle: TextStyle(
                                          color: Colors.deepPurple,
                                          fontWeight: FontWeight.bold),
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(30)))),
                                ),
                              ),
                              SizedBox(height: 15),
                              AnimatedContainer(
                                 width: _width,
                                height: _height,
                                curve: Curves.linear,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30)),
                                  color: Colors.white,
                                ),
                                duration: Duration(seconds: 3),
                                child: TextField(
                                  // onChanged: (str) {
                                  //   setState(() {
                                  //     _width = 250;
                                  //   });
                                  // },
                                  textAlign: TextAlign.center,
                                  decoration: InputDecoration(
                                      hintText: '',
                                      hintStyle: TextStyle(
                                          color: Colors.deepPurple,
                                          fontWeight: FontWeight.bold),
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(30)))),
                                ),
                              ),
                            ],
                          ),
                        ),
                     
                        
                      ],
                    ),
                  ),
                ),
                MaterialButton(
                          height: 60,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25))),
                          minWidth: size.width / 1.5,
                          onPressed: () {},
                          color: Colors.lightBlue,
                          textColor: Colors.white,
                          child: Text(
                            'Valider',
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                        )
              ],
            ),
            Positioned(
              top: size.height / 6,
              left: size.width / 4,
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: Colors.lightBlue,
                  ),
                  child: Center(
                    child: Text('Enregistrement',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                  ),
                  height: 60,
                  width: size.width / 2,
                ),
              ),
            ),
             
          ],
        ),
      ),
    ));
  }
}
