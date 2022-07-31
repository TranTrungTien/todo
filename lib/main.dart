import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learn/screens/home_page.dart';

void main() {
  runApp(const AppWidget());
}

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "xxx",
        theme: ThemeData(
          textTheme: GoogleFonts.robotoTextTheme(),
          primaryColor: Colors.blue[900],
        ),
        home: const HomePage());
  }
}
