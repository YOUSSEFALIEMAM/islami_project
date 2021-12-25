import 'package:flutter/material.dart';
import 'package:islami_progect_git/home/quran/suradetialsscreen.dart';

class SuraNameWidget extends StatelessWidget {
 String suraName;
 int index;
 SuraNameWidget(this.suraName,this.index);
  @override
  Widget build(BuildContext context) {
    return     InkWell(
      onTap: (){
        Navigator.pushNamed(context, SuraDetialsScreen.routeName,
            arguments:SuraDetialsArg(index, suraName) );
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child:   Text(suraName,style: TextStyle(

          fontSize: 24,

        ),

        textAlign: TextAlign.center,

        ),
      ),
    );
  }
}
