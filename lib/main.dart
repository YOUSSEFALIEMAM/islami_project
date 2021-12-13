import 'package:flutter/material.dart';
import 'package:islami_progect_git/home_screen.dart';

void main(){
  runApp(Main_app());
}
class Main_app extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Isalmi',
      routes: {
        Home_Screen.routeName:(buildcontext)=>Home_Screen(),
      },
      initialRoute: Home_Screen.routeName,
    );
  }
}
