import 'package:flutter/material.dart';
import 'package:islami_progect_git/home/quran/suradetialsscreen.dart';
import 'package:islami_progect_git/home/quran/suranamewidget.dart';
import 'package:islami_progect_git/main.dart';

class Quran_Tab extends StatelessWidget
{
List<String>Names=["الفاتحه","البقرة","آل عمران","النساء","المائدة","الأنعام","الأعراف","الأنفال","التوبة","يونس","هود"
  ,"يوسف","الرعد","إبراهيم","الحجر","النحل","الإسراء","الكهف","مريم","طه","الأنبياء","الحج","المؤمنون"
  ,"النّور","الفرقان","الشعراء","النّمل","القصص","العنكبوت","الرّوم","لقمان","السجدة","الأحزاب","سبأ"
  ,"فاطر","يس","الصافات","ص","الزمر","غافر","فصّلت","الشورى","الزخرف","الدّخان","الجاثية","الأحقاف"
  ,"محمد","الفتح","الحجرات","ق","الذاريات","الطور","النجم","القمر","الرحمن","الواقعة","الحديد","المجادلة"
  ,"الحشر","الممتحنة","الصف","الجمعة","المنافقون","التغابن","الطلاق","التحريم","الملك","القلم","الحاقة","المعارج"
  ,"نوح","الجن","المزّمّل","المدّثر","القيامة","الإنسان","المرسلات","النبأ","النازعات","عبس","التكوير","الإنفطار"
  ,"المطفّفين","الإنشقاق","البروج","الطارق","الأعلى","الغاشية","الفجر","البلد","الشمس","الليل","الضحى","الشرح"
  ,"التين","العلق","القدر","البينة","الزلزلة","العاديات","القارعة","التكاثر","العصر",
  "الهمزة","الفيل","قريش","الماعون","الكوثر","الكافرون","النصر","المسد","الإخلاص","الفلق","الناس"];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       Expanded(
         child: Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Image.asset('assets/images/quran_top_logo.png'),
           ],
         ),
       ),
        Expanded(
            flex: 3,
           child: Container(child: (
            ListView.separated(itemBuilder: (buildContext,index)
            {
             return SuraNameWidget(Names[index],index);
            },
            itemCount: Names.length,
              separatorBuilder: (buildContext,index){
              return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                   height: 1,
                   color: Theme.of(context).primaryColor,
                    margin: EdgeInsets.symmetric(horizontal: 24),
                  ),
                );

              },
            )
          ),),
        )],
    );


  }
}
