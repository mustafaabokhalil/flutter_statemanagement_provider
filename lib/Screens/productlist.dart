import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemangtest/Provider/MovieProvider.dart';
import 'package:statemangtest/Provider/productProvider.dart';
import 'package:statemangtest/widgets/ProductTile.dart';

import 'FavProducts.dart';

class ProductList extends StatelessWidget {
  const ProductList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final movies = Provider.of<ProductProvider>(context);
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        actions: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: IconButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (ctx) => FavoritProd()));
                    },
                    icon: Icon(
                      Icons.favorite,
                      size: 50,
                    )),
              ),
              Positioned(
                top: 11,
                right: 8,
                child: Container(
                    width: 30,
                    height: 20,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue, width: 1),
                        color: Colors.red,
                        shape: BoxShape.circle),
                    child:
                        Center(child: Text('${movies.favoriteMovies.length}'))),
              ),
            ],
          )
        ],
        title: Text('Product list'),
      ),
      body: ListView.builder(
        itemCount: movies.products.length,
        itemBuilder: (BuildContext context, int index) {
          return ProductTile(
            movieIndex: index,
          );
        },
      ),
    );
  }
}
