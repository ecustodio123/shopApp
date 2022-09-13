import 'package:flutter/material.dart';
import 'package:shop_app/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'detail';

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {

    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'cart' : (BuildContext context) => CartScreen()});
    appRoutes.addAll({'home' : (BuildContext context) => HomeScreen()});
    appRoutes.addAll({'detail' : (BuildContext context) => DetailScreen()});

    // for (final option in menuOptions) {
    //   appRoutes.addAll({option.route : (BuildContext context) => option.screen});
    // }

    return appRoutes;
  }

}