import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Color(0xFF00C6FC);
  static const Color darkPrimary = Color(0XFF5D6B88);

  static final ThemeData lightTheme = ThemeData.light().copyWith(
      //Color Primario
      primaryColor: const Color(0xFF00C6FC),

      //AppBar Theme
      appBarTheme: const AppBarTheme(
          color: Colors.transparent,
          elevation: 0,
          titleTextStyle: TextStyle(
              color: Colors.black,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
              fontSize: 20)),
      scaffoldBackgroundColor: const Color(0XFFF8F8F8),

      // //ElevatedButton
      // elevatedButtonTheme: ElevatedButtonThemeData(
      //   style: ElevatedButton.styleFrom(
      //     primary: primary,
      //     shape: const StadiumBorder(),
      //     elevation: 0,
      //     textStyle: const TextStyle(fontSize: 16, fontFamily: 'Oxygen', fontWeight: FontWeight.w700),
      //   ),
      // ),

      // //inputDecorationTheme
      // inputDecorationTheme: const InputDecorationTheme(
      //   floatingLabelStyle: TextStyle(color: Colors.white),
      //   fillColor: Colors.white,
      //   filled: true,

      //   enabledBorder: OutlineInputBorder(
      //     borderSide: BorderSide(color: Colors.white),
      //     borderRadius: BorderRadius.all(Radius.circular(46))
      //   ),

      //   focusedBorder: OutlineInputBorder(
      //     borderSide: BorderSide(color: Colors.white),
      //     borderRadius: BorderRadius.all(Radius.circular(46))
      //   ),

      //   border: OutlineInputBorder(
      //     borderRadius: BorderRadius.all(Radius.circular(46))
      //   ),

      // ),

      // scaffoldBackgroundColor: const Color(0XFFF0F2F8)

      );

  // static final ThemeData darkTheme = ThemeData.dark().copyWith(
  //   // Color Primario
  //   primaryColor: const Color(0XFF5D6B88),

  //   // AppBar Theme
  //   appBarTheme: const AppBarTheme(
  //     color: darkPrimary,
  //     elevation: 0
  //   ),

  // );

}
