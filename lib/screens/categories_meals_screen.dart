import 'package:flutter/material.dart';
import 'package:receitas/models/category.dart';

class CategoriesMealsScreen extends StatelessWidget {

  final Category category;

  const CategoriesMealsScreen({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
      ),
      body: Center(
        child: Text('Receitas por Categoria ${category.id}'),
      ),
    );
  }
}
