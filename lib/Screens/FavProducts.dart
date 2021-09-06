import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemangtest/Provider/MovieProvider.dart';
import 'package:statemangtest/Provider/productProvider.dart';

class FavoritProd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final movies = Provider.of<ProductProvider>(context).favoriteMovies;
    final media = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        width: media.width,
        height: media.height,
        child: ListView.builder(
            itemCount: movies.length,
            itemBuilder: (context, i) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Material(
                  color: Colors.grey.withOpacity(0.5),
                  elevation: 5.0,
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    width: media.width,
                    height: media.height / 5,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                  width: media.width / 4,
                                  height: media.height / 6,
                                  decoration: BoxDecoration(
                                      color: Colors.transparent,
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Image.network(
                                    '${movies[i].imageUrl}',
                                    fit: BoxFit.cover,
                                  )),
                            ),
                            Text(
                              '${movies[i].title}',
                              style: TextStyle(fontSize: 20),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
