import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemangtest/Provider/productProvider.dart';

import 'Provider/MovieProvider.dart';
import 'Screens/MovieList.dart';
import 'Screens/productlist.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider<Movies>(
      create: (context) => Movies(),
    ),
    ChangeNotifierProvider<ProductProvider>(
      create: (context) => ProductProvider(),
    )
  ], child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProductList(),
    );
  }
}
