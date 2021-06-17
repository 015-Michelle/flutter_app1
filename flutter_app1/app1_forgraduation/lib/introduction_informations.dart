import 'package:flutter/material.dart';
import 'all_infromations.dart';

class IntroductionInformation extends StatelessWidget {

  List item_context=GetValues();
  String str=GetPersonalInformation();

  IntroductionInformation({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ExpansionTile(
        title: Text('个人信息',textScaleFactor: 1.2,),
        subtitle: Text(GetPersonalInformation(),overflow: TextOverflow.ellipsis,),
        backgroundColor: Colors.white60,
        children: str.split('|').map((e) => Text(e,textScaleFactor: 0.8,)).toList()
      ),

    );
  }
}

class MyList extends StatelessWidget {
  const MyList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}


