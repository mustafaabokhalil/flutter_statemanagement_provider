import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemangtest/Models/productModel.dart';
import 'package:statemangtest/Provider/productProvider.dart';

class ProductTile extends StatelessWidget {
  ProductTile({this.movieIndex});
  final movieIndex;

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return Consumer<ProductProvider>(
      builder: (context, movies, child) {
        ProductModel product = movies.products[movieIndex];
        return Container(
          width: media.width,
          height: media.height / 4,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Material(
                  elevation: 2.0,
                  child: Container(
                    width: media.width,
                    height: media.height / 5,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(8)),
                            width: media.width / 3,
                            height: 100,
                            child: Image.network(
                              '${product.imageUrl}',
                              fit: BoxFit.cover,
                              width: media.width / 3,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              product.title,
                              style: (product.isFav)
                                  ? TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold)
                                  : TextStyle(color: Colors.black),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: IconButton(
                              icon: (product.isFav)
                                  ? Icon(
                                      Icons.favorite,
                                      color: Colors.red,
                                      size: 50,
                                    )
                                  : Icon(
                                      Icons.favorite_border,
                                      color: Colors.red,
                                      size: 40,
                                    ),
                              onPressed: () {
                                Provider.of<ProductProvider>(context,
                                        listen: false)
                                    .updateFavorite(product);
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
