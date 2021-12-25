

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_progect_git/home/quran/verses_widget.dart';

class SuraDetialsScreen extends StatefulWidget {
static const String routeName='sura screen';

  @override
  State<SuraDetialsScreen> createState() => _SuraDetialsScreenState();
}

class _SuraDetialsScreenState extends State<SuraDetialsScreen> {
List<String>ayat=[];

  @override
  Widget build(BuildContext context) {
    var args=ModalRoute.of(context)!.settings.arguments as SuraDetialsArg;
    if(ayat.isEmpty)
    readSura(args.index);
    return Stack(
        children: [
        Image.asset('assets/images/bg3.png'),
    Scaffold(
    appBar: AppBar(
    title:  Text(args.name),
    ),
    body:Container(
      decoration: BoxDecoration(color: Colors.white,
        borderRadius: BorderRadius.circular(24)
      ),
      margin: EdgeInsets.symmetric(horizontal: 24,vertical: 48),
      padding: EdgeInsets.all(8),
      child: ayat.isEmpty?Center(child: CircularProgressIndicator())
      :Container(child: ListView.separated(itemBuilder: (buildContext,index)
      {
       return VersesWidget(ayat[index],index);
      },
      itemCount: ayat.length,
      separatorBuilder: (buildContext,index){
        return Container(
          height: 1,
          color: Theme.of(context).primaryColor,
          margin: EdgeInsets.symmetric(horizontal: 24)
        );
      },
      ),),
    ) ,
    )
    ]);

  }

  void readSura(int index) async{
  String filename='assets/files/${index+1}.txt';
  String filecontent=await rootBundle.loadString(filename);
  print(filecontent);
  List<String>verses=filecontent.split('\n');
  ayat=verses;
  setState(() {

  });
  }
}
class SuraDetialsArg{
  String name;
  int index;
  SuraDetialsArg(this.index,this.name);
}
