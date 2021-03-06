import 'package:buy_it/provider/adminMode.dart';
import 'package:buy_it/provider/modelHud.dart';
import 'package:buy_it/screens/admin/addProduct.dart';
import 'package:buy_it/screens/admin/adminHome.dart';
import 'package:buy_it/screens/admin/editProduct.dart';
import 'package:buy_it/screens/login_screen.dart';
import 'package:buy_it/screens/signup_screen.dart';
import 'package:buy_it/screens/user/homePage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

main()=>runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MultiProvider(
      providers:
      [
      ChangeNotifierProvider<ModelHud>(
      create: (context)=>ModelHud(),),
        ChangeNotifierProvider<AdminMode>(
          create: (context)=>AdminMode(),)
      ],
      child: MaterialApp(
            initialRoute: LoginScreen.id,
            routes:
            {
              LoginScreen.id:(context)=>LoginScreen(),
              SignupScreen.id:(context)=>SignupScreen(),
              HomePage.id: (context) =>HomePage(),
              AdminHome.id:(context)=>AdminHome(),
              AddProduct.id:(context) =>AddProduct(),
              EditProduct.id:(context) =>EditProduct()
            },
          ),
    );

  }
}
