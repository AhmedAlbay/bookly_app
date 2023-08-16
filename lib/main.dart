import 'package:bookly_app/const.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:flutter/material.dart';


import 'package:google_fonts/google_fonts.dart';



void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatefulWidget {
  const BooklyApp({super.key});

  @override
  State<BooklyApp> createState() => _BooklyAppState();
}

class _BooklyAppState extends State<BooklyApp> {
  late AnimationController animationController;
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),

    );
  }
}
