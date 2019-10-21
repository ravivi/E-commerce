import 'package:flutter/material.dart';


class LoginPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/shopping.jpeg"),
              fit: BoxFit.cover
          ),
        ),
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Spacer(flex: 2,),
                  Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      alignment: Alignment.center,
                      height: 100,
                      width: 100,
                      child: Stack(
                        children: <Widget>[
                          CircleAvatar(
                            backgroundColor: Colors.purple,
                            radius: 40,
                          ),

                          Positioned(
                            right: 2,
                            top: 6,
                            child: CircleAvatar(
                              radius: 33,
                              backgroundColor: Colors.indigo,
                              child: Icon(Icons.shopping_cart, color: Colors.white, size: 30,),
                            ),
                          )
                        ],
                      ),
                    ),

                    Text('Treva Shop', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),)


                  ],

                ),
                  Spacer(flex: 2,),
                  myRaisedButton('Login With FaceBook', Icons.face, Colors.blue, Colors.white),
                  SizedBox(height: 20,),
                  myRaisedButton('Login With Google', Icons.golf_course, Colors.white, Colors.grey),
                  Spacer(flex: 1,),
                  Text('OR', style: TextStyle(color: Colors.white, fontSize: 15.0),),
                  Spacer(flex: 1,),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 0),
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 30),
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                labelText: "Nom",
                                icon: Icon(Icons.email)
                            ),
                          ),

                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 30),
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                labelText: "Password",
                                icon: Icon(Icons.vpn_key)
                            ),
                          ),

                        ),
                        SizedBox(
                          height: 20,
                        ),

                        InkWell(
                          onTap: (){
                             Navigator.pushNamed(context, 'sign');
                          },
                          child: Container(
                            child: Text("Have Account? Sign in", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),),
                          ),
                        )


                      ],
                    ),
                  ),
                  Spacer(flex: 2,),
                  customButton(context),
                  Spacer(flex: 2,),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget myRaisedButton(String data, IconData iconData, Color back, Color font) {
    return RaisedButton(
        onPressed: (){},
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(30.0))
      ),
      color: back,
      child: Container(
        height: 50,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(iconData),
            SizedBox(width: 10.0,),
            Text(data, style: TextStyle(color: font),)
          ],
        ),
      ),
    );
  }

  Widget customButton(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(40.0)),
      child: Container(
        width: double.infinity,
        height: 50.0,
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [Colors.deepPurple[900], Colors.purple],
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                offset: Offset(0.0, 1.5),
                blurRadius: 1.5,
              ),
            ]),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
              onTap: (){
                Navigator.pushNamed(context, 'categorie');
              },
              child: Center(
                child: customText("Login", size: 20, weight: FontWeight.bold),
              )),
        ),
      ),
    );
  }


  Widget customText(String data, {double size, FontWeight weight, Color color: Colors.white}) {
    return Text(data, style: TextStyle(color: color, fontWeight: weight, fontSize: size,), textAlign: TextAlign.center,);
  }
}
