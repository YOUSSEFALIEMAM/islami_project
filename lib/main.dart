import 'package:flutter/material.dart';
import 'package:islami_progect_git/home/home_screen.dart';

void main(){
  runApp(Main_app());
}
class MyThemedata{
  static const Color primarycolor= Color.fromARGB(255, 183, 147, 95);
  static const Color darkcolor=Color.fromARGB(255, 20, 26, 46);
  static final ThemeData ligththeme= ThemeData(
    appBarTheme:AppBarTheme(color: Colors.transparent,elevation: 0,
        titleTextStyle: TextStyle(color:Colors.black,fontSize: 30)) ,
    scaffoldBackgroundColor: Colors.transparent,
    primaryColor: MyThemedata.primarycolor,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white,
    )
  );
  static final ThemeData darktheme=ThemeData(
    appBarTheme:AppBarTheme(color: Colors.transparent,elevation: 0,
        titleTextStyle: TextStyle(color:Colors.white,fontSize: 30)) ,
    scaffoldBackgroundColor: Colors.transparent,
    primaryColor: MyThemedata.darkcolor,
  );
}

class Main_app extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Isalmi',
      theme: MyThemedata.ligththeme,
      darkTheme: MyThemedata.darktheme,
      routes: {
        Home_Screen.routeName:(buildcontext)=>Home_Screen(),
      },
      initialRoute: Home_Screen.routeName,
    );
  }
}
