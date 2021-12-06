import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:receitas/models/category.dart';
import 'package:receitas/utils/app_routes.dart';

class CategoryItem extends StatelessWidget {
  final Category category;

  const CategoryItem({
    Key? key,
    required this.category,
  }) : super(key: key);

  void _selecionaCategoria(BuildContext context) {
    /*
    ///Navegação v1
    Navigator.of(ctx).push(
      MaterialPageRoute(
        builder: (_) {
          return CategoriesMealsScreen(category: category,);
        },
      ),
    );*/

    ///Navegação v2 - Chamada com rota nomeada
    Navigator.of(context).pushNamed(
      AppRoutes.CATEGORIES_MEALS,
      arguments: category,
    );
  }

  @override
  Widget build(BuildContext context) {
    ///INKWELL PERMITE INTERAGIR QUANDO TOCAR SOBRE onTap
    return InkWell(
      onTap: () => _selecionaCategoria(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: EdgeInsets.all(12),
        child: Text(
          category.title,
          style: Theme.of(context).textTheme.caption,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
            colors: [
              category.color.withOpacity(0.5),
              category.color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
      ),
    );
  }
}
