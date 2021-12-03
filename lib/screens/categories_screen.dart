import 'package:flutter/material.dart';
import 'package:receitas/components/category_item.dart';
import 'package:receitas/data/dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vamos Cozinhar'),
        elevation: 3,
      ),
      body: GridView(
        padding: const EdgeInsets.all(12),
        ///Sliver é uma area com scroll
        ///GridDelegate Renderizado com MaxCrossAxisExtent
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: DUMMY_CATEGORIES.map((categoria) {
          return CategoryItem(category: categoria);
        }).toList(),
      ),
    );
  }
}
