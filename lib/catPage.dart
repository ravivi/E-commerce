import 'package:flutter/material.dart';

import 'models/commerce.dart';

class CatPage extends StatefulWidget {
  @override
  _CatPageState createState() => _CatPageState();
}

class _CatPageState extends State<CatPage> {
   List<CategorieProduit> liste = [];
  @override
  initState() {
    charge();
    super.initState();
  }

  Future charge() async {
    print('Chagement.......................');
    List<CategorieProduit> myList = await ListCategoryProduct().getListCat();
    print(myList);
    setState(() {
      liste = myList;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Text('Category Brand', style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold),),
        centerTitle: false,
        elevation: 0,
        backgroundColor: Colors.white,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Icon(Icons.search, color: Colors.black54,),
          )
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: ListView.builder(
          itemCount: 5,
            itemBuilder: (buildContext, index) => Container(
              height: 120,
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                image: DecorationImage(
                    image: AssetImage("images/ap.jpg"),
                  fit: BoxFit.cover
                )
              ),
              child: Text("hdhhd", style: TextStyle(color: Colors.white, fontSize: 35.0, fontWeight: FontWeight.bold),),
            )
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
                icon: Icon(
                  Icons.home,
                  color: Colors.grey,
                ),
                onPressed: () {}),
            IconButton(
                icon: Icon(Icons.branding_watermark, color: Colors.blue),
                onPressed: () {}),
            IconButton(
                icon: Icon(Icons.shopping_cart, color: Colors.grey),
                onPressed: () {}),
            IconButton(
                icon: Icon(Icons.account_box, color: Colors.grey),
                onPressed: () {})
          ],
        ),
      ),
    );
  }
}
