import 'package:flutter/material.dart';
import 'package:receitas/data/dummy_data.dart';
import 'package:receitas/models/category.dart';

class CategoriesMealsScreen extends StatelessWidget {
  const CategoriesMealsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ///Pegar categoria com base na rota a partir da Navegação
    final Category category =
        ModalRoute.of(context)!.settings.arguments as Category;

    ///Iremos receber as refeições filtradas por category
    final categoryMeals = DUMMY_MEALS.where((refeicao) {
      return refeicao.categories.contains(category.id);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
      ),
      body: ListView.builder(
        itemCount: categoryMeals.length,
        itemBuilder: (ctx, index){
          return Text(categoryMeals[index].title);
        },
      ),
    );
  }
}
