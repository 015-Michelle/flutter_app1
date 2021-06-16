import 'package:flutter/material.dart';
import 'all_infromations.dart';

class IntroductionInformation extends StatelessWidget {

  const IntroductionInformation({Key key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ExpansionTile(
        title: Text('个人信息',textScaleFactor: 1.2,),
        subtitle: Text(GetPersonalInformation(),overflow: TextOverflow.ellipsis,),
        backgroundColor: Colors.white60,
        children: [
          ListTile(
            title: Text(''),
            subtitle: Text(''),
          ),
        ],
      ),
    );
  }
}
