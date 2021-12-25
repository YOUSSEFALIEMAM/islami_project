import 'package:flutter/material.dart';

class VersesWidget extends StatelessWidget {
String text;
int index;
VersesWidget(this.text,this.index);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8),
      child:Text(text+' ${{index+1}}',
        textAlign: TextAlign.center,
        style: TextStyle(
        fontSize: 18,
      ),
      textDirection: TextDirection.rtl,
      ),
    );
  }
}
