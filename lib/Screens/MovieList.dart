import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemangtest/Provider/MovieProvider.dart';
import 'package:statemangtest/Screens/faveMovie.dart';
import 'package:statemangtest/widgets/MovieTile.dart';

class MovieListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Movies movies = Provider.of<Movies>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (ctx) => FavoritMovie()));
              },
              icon: Icon(Icons.favorite))
        ],
        title: Text('Movie list'),
      ),
      body: ListView.builder(
        itemCount: movies.movieCount,
        itemBuilder: (BuildContext context, int index) {
          return MovieTile(
            movieIndex: index,
          );
        },
      ),
    );
  }
}
