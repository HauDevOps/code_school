import 'package:flutter/material.dart';
import 'package:school_code/page/home_page.dart';
import 'package:school_code/router/customer_router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      initialRoute: HomePage.routeName,
      onGenerateRoute: CustomerRouter.allRoutes,
    );
  }
}
