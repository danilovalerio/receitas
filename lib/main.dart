import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:receitas/screens/categories_meals_screen.dart';
import 'package:receitas/screens/categories_screen.dart';
import 'package:receitas/utils/app_routes.dart';

void main() {
/*  runApp(DevicePreview(builder: (context) {
    return MaterialApp(
      title: "Vamos Cozinhar",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        accentColor: Colors.amber,
        fontFamily: 'Raleway',
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        textTheme: ThemeData.light().textTheme.copyWith(
          caption: const TextStyle(
            fontSize: 20,
            fontFamily: 'RobotoCondensed',
          ),
        ),
      ),
      //Device Preview
      builder: DevicePreview.appBuilder,
      locale: DevicePreview.locale(context),
      useInheritedMediaQuery: true,

      home: CategoriesScreen(),
      routes: {
        AppRoutes.HOME: (ctx) => CategoriesScreen(),
        AppRoutes.CATEGORIES_MEALS: (ctx) => CategoriesMealsScreen(),
      },
    );
  }));*/
  runApp(const MyApp());
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
        accentColor: Colors.amber,
        fontFamily: 'Raleway',
        canvasColor: const Color.fromRGBO(255, 254, 229, 1),
        textTheme: ThemeData.light().textTheme.copyWith(
          caption: const TextStyle(
            fontSize: 20,
            fontFamily: 'RobotoCondensed',
          ),
        ),
      ),
      home: CategoriesScreen(),
      ///Definimos um map {}
      // initialRoute: AppRoutes.HOME,
      routes: {
        AppRoutes.CATEGORIES_MEALS: (ctx) => const CategoriesMealsScreen(),
      },
    );
  }
}
