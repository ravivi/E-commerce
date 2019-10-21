import 'package:event/models/commerce.dart';
import 'package:flutter/material.dart';

class Marche extends StatefulWidget {
  @override
  _MarcheState createState() => _MarcheState();
}

class _MarcheState extends State<Marche> {
  List<Produit> _searchResult = [];
  Icon _searchIcon = new Icon(Icons.search);
  Widget _appBarTitle = new Text(
    'Nos Prduits',
    style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold),
  );
  final TextEditingController _filter = new TextEditingController();
  
  
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context).settings.arguments as CategorieProduit;
    print('notre typs ${args.produit.listProduit.length}');
    
    parti(String name) {
      Navigator.pushNamed(context, 'chart',
          arguments: args.produit.listProduit.firstWhere((i) => i.nom == name));
    }
    onSearchTextChanged(String text) async {
    _searchResult.clear();
    if (text.isEmpty) {
      setState(() {});
      return;
    }
    args.produit.listProduit.forEach((produiDetail) {
      if (produiDetail.nom.toLowerCase().contains(text.toLowerCase()) || produiDetail.prix.toString().contains(text) )
        _searchResult.add(produiDetail);
    });
    setState(() {});
  }

  void _searchPressed() {
    setState(() {
      if (this._searchIcon.icon == Icons.search) {
        this._searchIcon = new Icon(Icons.close);
        _appBarTitle = new TextField(
          controller: _filter,
          onChanged: onSearchTextChanged,
          decoration: new InputDecoration(
              prefixIcon: new Icon(Icons.search), hintText: 'Rechercher...'),
        );
      } else {
        this._searchIcon = new Icon(Icons.search);
        _appBarTitle = new Text(
          args.nom,
          style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold),
        );
        _filter.clear();
      }
    });
  }    
  

    return Scaffold(
      appBar: AppBar(
        // textTheme: ,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: _appBarTitle,
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
      
      body:
         Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Card(
                      elevation: 3,
                      child: Container(
                        height: 50,
                        //width: MediaQuery.of(context).size.width/2.5,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(Icons.arrow_drop_down),
                            Text('sort'),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Card(
                      elevation: 3,
                      child: Container(
                        height: 50,
                        //width: MediaQuery.of(context).size.width/2.5,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(Icons.arrow_drop_down),
                            Text('Refine'),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Expanded(
                
                child: _searchResult.length > 0 || _filter.text.isNotEmpty
                ? GridView.builder(
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 250,
                    childAspectRatio: 2 / 3,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 10,
                  ),
                  itemCount: _searchResult.length,
                  itemBuilder: (context, i) {
                    return GestureDetector(
                      onTap: () {
                        parti(_searchResult[i].nom);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          children: <Widget>[
                            Image.asset(
                              "images/${_searchResult[i].image}",
                              fit: BoxFit.contain,
                              height: 150,
                              width: double.infinity,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(_searchResult[i].nom,
                                        style: TextStyle(color: Colors.grey)),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                        "\$ ${_searchResult[i].prix}",
                                        style: TextStyle(color: Colors.black)),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Text('4.5',
                                            style:
                                                TextStyle(color: Colors.grey)),
                                        Icon(Icons.star, color: Colors.yellow),
                                        Spacer(),
                                        Text("200 Sale",
                                            style:
                                                TextStyle(color: Colors.grey)),
                                        SizedBox(
                                          width: 6,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                )
                :GridView.builder(
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 250,
                    childAspectRatio: 2 / 3,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 10,
                  ),
                  itemCount: args.produit.listProduit.length,
                  itemBuilder: (context, i) {
                    return GestureDetector(
                      onTap: () {
                        parti(args.produit.listProduit[i].nom);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          children: <Widget>[
                            Image.asset(
                              "images/${args.produit.listProduit[i].image}",
                              fit: BoxFit.contain,
                              height: 150,
                              width: double.infinity,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(args.produit.listProduit[i].nom,
                                        style: TextStyle(color: Colors.grey)),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                        "\$ ${args.produit.listProduit[i].prix}",
                                        style: TextStyle(color: Colors.black)),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Text('4.5',
                                            style:
                                                TextStyle(color: Colors.grey)),
                                        Icon(Icons.star, color: Colors.yellow),
                                        Spacer(),
                                        Text("200 Sale",
                                            style:
                                                TextStyle(color: Colors.grey)),
                                        SizedBox(
                                          width: 6,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                )
              ),
            ],
          ),
        ),
      
    );
  }
}
