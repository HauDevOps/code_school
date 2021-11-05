import 'package:flutter/material.dart';
import 'package:school_code/bloc/base_bloc.dart';
import 'package:school_code/page/home_bloc.dart';
import 'package:school_code/page/home_page.dart';
import 'package:school_code/router/slide_left_route.dart';

class CustomerRouter{
  static Route<dynamic> allRoutes(RouteSettings settings){
    switch(settings.name){
      case HomePage.routeName:
        return SlideLeftRoute(BlocProvider(
          child: HomePage(),
          bloc: HomeBloc(),
        ));
    }
    return MaterialPageRoute(builder: (_) => null);
  }
}