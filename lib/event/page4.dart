import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Page4 extends StatefulWidget {
  @override
  _Page4State createState() => _Page4State();
}

class _Page4State extends State<Page4> with SingleTickerProviderStateMixin {
  Animation _animation;
  AnimationController _animationController;
  double _width = 30;
  double _height = 40;


  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(vsync: this, duration: const Duration(milliseconds: 500));
    _animation = Tween<double>(begin: _width, end: 150).animate(_animationController);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _animationController.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat ,
      floatingActionButton: OutlineButton(onPressed: (){


      },
        color: Colors.white,
        textColor: Colors.white,
        borderSide: BorderSide(
          color: Colors.white,
          style: BorderStyle.solid,
          width: 2
        ),
        child: Text("Valider"),
      ),
      backgroundColor: Colors.blue,
     body: SafeArea(
       child: Column(
         children: <Widget>[
           Row(
             children: <Widget>[
               Icon(Icons.arrow_back, color: Colors.white,),
               Spacer(),
               Container(
                 height: 60,
                 width: 150,
                 decoration: BoxDecoration(
                     color: Colors.white,
                   borderRadius: BorderRadius.only(
                     bottomLeft: Radius.circular(20)
                   )
                 ),
               )
             ],
           ),
          SizedBox(height: 50,),
         Container(
           width: 250,
           child: TextField(
             onChanged: (str){
               setState(() {
                 _width = 250;
               });
             },

             decoration: InputDecoration(
               labelText: 'Enter data...',
               border: OutlineInputBorder(
                 gapPadding: 30,
                 borderRadius: BorderRadius.circular(10),
                 borderSide: BorderSide(color: Colors.white
                 )
               )
             ),
           ),
         ),
           Column(
             crossAxisAlignment: CrossAxisAlignment.center,
             mainAxisAlignment: MainAxisAlignment.center,
             children: <Widget>[
               AnimatedContainer(
                 duration: const Duration(seconds: 1),
                 width: _width,
                 height: _height,
                 curve: Curves.linear,
                 child: TextField(
                   decoration: InputDecoration(
                     labelText: "Nom",
                     border: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(10),
                         borderSide: BorderSide(color: Colors.white
                     )
                     )
                   ),
                 ),
               )
             ],
           )
         ],
       ),
     ),

    );
  }
}
