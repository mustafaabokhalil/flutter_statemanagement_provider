import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemangtest/Models/MovieModel.dart';
import 'package:statemangtest/Provider/MovieProvider.dart';

class MovieTile extends StatelessWidget {
  final int movieIndex;

  MovieTile({
    required this.movieIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<Movies>(
      builder: (context, movies, child) {
        MovieModel movie = movies.movies[movieIndex];
        return ListTile(
          title: Text(
            movie.movieName,
            style: (movie.isFavorite)
                ? TextStyle(color: Colors.black)
                : TextStyle(color: Colors.grey),
          ),
          trailing: IconButton(
            icon: (movie.isFavorite)
                ? Icon(
                    Icons.favorite,
                    color: Colors.red,
                  )
                : Icon(
                    Icons.favorite_border,
                    color: Colors.red,
                  ),
            onPressed: () {
              Provider.of<Movies>(context, listen: false).updateFavorite(movie);
            },
          ),
        );
      },
    );
  }
}
