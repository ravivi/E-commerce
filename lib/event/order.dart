import 'package:flutter/material.dart';
import 'produictDetail.dart';
import 'data.dart';

class Order extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 9,
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(60),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Product()));
                          },
                          child: Container(
                            child: Icon(Icons.arrow_back),
                          ),
                        ),
                        Container(
                          height: 60,
                          width: 80,
                          //margin: EdgeInsets.only(left: 300),
                          child: Icon(
                            Icons.delete,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.only(
                              //topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                              //bottomRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: Text(
                        'My Order',
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Expanded(child: ListF()),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: ConstrainedBox(
              constraints: BoxConstraints(maxHeight: 72),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Text(
                      'Total: \$24',
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      height: MediaQuery.of(context).size.height,
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(60),
                              bottomRight: Radius.circular(60))),
                      child: Container(
                        padding: EdgeInsets.all(20),
                        margin: EdgeInsets.only(left: 30),
                        child: Text(
                          'Confirm order',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
