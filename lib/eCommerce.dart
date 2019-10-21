import 'package:flutter/material.dart';
import './models/commerce.dart';

class Ecommerce extends StatefulWidget {
  @override
  _EcommerceState createState() => _EcommerceState();
}

class _EcommerceState extends State<Ecommerce> {
  List<CategorieProduit> liste = [];
  List<CategorieProduit> _searchResult = [];
  Icon _searchIcon = new Icon(Icons.search);
  Widget _appBarTitle = new Text(
    'Categories',
    style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold),
  );
  final TextEditingController _filter = new TextEditingController();
  List names = new List();
  List filteredNames = new List();
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

  parti(String name) {
    Navigator.pushNamed(context, 'marche',
        arguments: liste.firstWhere((i) => i.nom == name));
  }

  onSearchTextChanged(String text) async {
    _searchResult.clear();
    if (text.isEmpty) {
      setState(() {});
      return;
    }
    liste.forEach((categorieDetail) {
      if (categorieDetail.nom.toLowerCase().contains(text.toLowerCase()))
        _searchResult.add(categorieDetail);
    });
    setState(() {});
  }

  void _searchPressed() {
    setState(() {
      if (this._searchIcon.icon == Icons.search) {
        this._searchIcon = new Icon(Icons.close);
        this._appBarTitle = new TextField(
          controller: _filter,
          onChanged: onSearchTextChanged,
          decoration: new InputDecoration(
              prefixIcon: new Icon(Icons.search), hintText: 'Rechercher...'),
        );
      } else {
        this._searchIcon = new Icon(Icons.search);
        this._appBarTitle = new Text(
          'categories',
          style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold),
        );
        filteredNames = names;
        _filter.clear();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _appBarTitle,
        centerTitle: false,
        elevation: 0,
        backgroundColor: Colors.white,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: IconButton(
              onPressed: _searchPressed,
              icon: _searchIcon,
              color: Colors.black54,
            ),
          )
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
       child: _searchResult.length > 0 || _filter.text.isNotEmpty
       ?ListView.builder(
            itemCount: _searchResult.length,
            itemBuilder: (buildContext, i) => GestureDetector(
                  onTap: () {
                    parti(_searchResult[i].nom);
                  },
                  child: Container(
                    height: 120,
                    width: double.infinity,
                    margin:
                        EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        image: DecorationImage(
                            image: AssetImage("images/${_searchResult[i].image}"),
                            fit: BoxFit.cover)),
                    child: Text(
                      _searchResult[i].nom,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 35.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                )
                )
                :ListView.builder(
            itemCount: liste.length,
            itemBuilder: (buildContext, i) => GestureDetector(
                  onTap: () {
                    parti(liste[i].nom);
                  },
                  child: Container(
                    height: 120,
                    width: double.infinity,
                    margin:
                        EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        image: DecorationImage(
                            image: AssetImage("images/${liste[i].image}"),
                            fit: BoxFit.cover)),
                    child: Text(
                      liste[i].nom,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 35.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
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
