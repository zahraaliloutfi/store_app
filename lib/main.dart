import 'package:flutter/material.dart';
import 'package:store_app/screens/home_page_screen.dart';

class StoreApp extends StatelessWidget {
  const StoreApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomePage.id: (context) => HomePage(),
      },
      initialRoute: HomePage.id,
    );
  }
}

void main(){
  runApp(const StoreApp());
}
