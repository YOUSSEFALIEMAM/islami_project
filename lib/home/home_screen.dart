import 'package:flutter/material.dart';
import 'package:islami_progect_git/home/hadeth/hadeth_tab.dart';
import 'package:islami_progect_git/home/quran/quran_tab.dart';
import 'package:islami_progect_git/home/radio/radio_tab.dart';
import 'package:islami_progect_git/home/sebha/sebha_tab.dart';
import 'package:islami_progect_git/main.dart';

class Home_Screen extends StatefulWidget {
static const String routeName='home';

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
int current=0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('assets/images/bg3.png'),
        Scaffold(
          appBar: AppBar(
            title: Center(child: Text('islami')),
          ),
          bottomNavigationBar:Theme(
            data: Theme.of(context).copyWith(
              canvasColor: MyThemedata.primarycolor,
            ),
            child: BottomNavigationBar(
              currentIndex: current,
              onTap: (index){
                current=index;
                setState(() {

                });
              },
              items: [BottomNavigationBarItem(icon:ImageIcon(AssetImage('assets/images/ic_quran.png')) ,
                  label: 'quran'),
                BottomNavigationBarItem(icon:ImageIcon(AssetImage('assets/images/ic_hadeth.png')) ,
                    label: 'hadeth'),
                BottomNavigationBarItem(icon:ImageIcon(AssetImage('assets/images/ic_sebha.png')) ,
                    label: 'sebha'),
                BottomNavigationBarItem(icon:ImageIcon(AssetImage('assets/images/ic_radio.png')) ,
                    label: 'radio'),

              ],
            ),
          ) ,
          body: views[current],
        ),
      ],
    );
  }
 List<Widget>views=[
   Quran_Tab(),
   Hadeth_Tab(),
   Sebha_Tab(),
   Radio_Tab(),
 ];
}
