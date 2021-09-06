import 'package:flutter/foundation.dart';
import 'package:statemangtest/Models/MovieModel.dart';
import 'package:statemangtest/Models/productModel.dart';

class ProductProvider extends ChangeNotifier {
  final List<ProductModel> _products = [
    ProductModel(
      id: 'M1',
      title: 'The Godfather',
      imageUrl:
          'https://lunkiandsika.files.wordpress.com/2011/11/the-godfather-alternative-poster-1972-01.png',
    ),
    ProductModel(
      id: 'M2',
      title: 'The Notebook',
      imageUrl: 'http://www.impawards.com/2004/posters/notebook.jpg',
    ),
    ProductModel(
      id: 'M1',
      title: 'Chemis',
      imageUrl:
          'https://images.unsplash.com/photo-1523275335684-37898b6baf30?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZHVjdHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80',
    ),
    ProductModel(
      id: 'M2',
      title: 'T-shirt',
      imageUrl: 'http://www.impawards.com/2004/posters/notebook.jpg',
    ),
    ProductModel(
      id: 'M1',
      title: 'Shoes',
      imageUrl:
          'https://micro-cdn.sumo.com/image-resize/sumo-convert?uri=https://media.sumo.com/storyimages/f476bbdf-3438-47b0-b5a2-adbb3fefef8d&hash=fac4d19c59ffe3d603643eb61162d3f3b946dd5e4a19a5692d6731f58def77b4&format=webp',
    ),
    ProductModel(
      id: 'M2',
      title: 'Trouser',
      imageUrl: 'http://www.impawards.com/2004/posters/notebook.jpg',
    ),
    ProductModel(
      id: 'M1',
      title: 'hand Back',
      imageUrl:
          'https://lunkiandsika.files.wordpress.com/2011/11/the-godfather-alternative-poster-1972-01.png',
    ),
    ProductModel(
      id: 'M2',
      title: 'Dress',
      imageUrl: 'http://www.impawards.com/2004/posters/notebook.jpg',
    ),
  ];

  List<ProductModel> get products {
    return _products;
  }

  int get movieCount {
    return _products.length;
  }

  void updateFavorite(ProductModel movieItem) {
    movieItem.toggleFavorite();
    notifyListeners();
  }

  List<ProductModel> get favoriteMovies {
    return products.where((prod) => prod.isFav).toList();
  }

  int get favCount {
    return favoriteMovies.length;
  }
}
