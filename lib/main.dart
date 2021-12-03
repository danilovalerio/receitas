import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:receitas/screens/categories_screen.dart';

void main() {
  runApp(DevicePreview(builder: (context) {
    return MaterialApp(
      title: "Title",
      debugShowCheckedModeBanner: false,

      //Device Preview
      builder: DevicePreview.appBuilder,
      locale: DevicePreview.locale(context),
      useInheritedMediaQuery: true,

      home: CategoriesScreen(),
    );
  }));

  // runApp(const MyApp());
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
      home: CategoriesScreen(),
    );
  }
}
