import 'package:flutter/material.dart';
import 'package:shop_app/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {

    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home' : (BuildContext context) => HomeScreen()});

    // for (final option in menuOptions) {
    //   appRoutes.addAll({option.route : (BuildContext context) => option.screen});
    // }

    return appRoutes;
  }

}