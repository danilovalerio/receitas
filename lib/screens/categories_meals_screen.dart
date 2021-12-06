import 'package:flutter/material.dart';
import 'package:receitas/models/category.dart';

class CategoriesMealsScreen extends StatelessWidget {

  const CategoriesMealsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    ///Pegar categoria com base na rota a partir da Navegação
    final Category category = ModalRoute.of(context)!.settings.arguments as Category;

    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
        // title: Text('Categoria'),
      ),
      body: Center(
        child: Text('Receitas por Categoria ${category.id}'),
      ),
    );
  }
}
