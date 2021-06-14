import 'package:flutter/material.dart';

class IntroductionInformation extends StatelessWidget {
  const IntroductionInformation({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ExpansionTile(
        title: Text('个人信息'),
        subtitle: Text('女|3岁|天秤座|现居广州|来自重庆|【IT】计算机/互联网/通信',overflow: TextOverflow.ellipsis,),
        backgroundColor: Colors.white60,
        children: [
          ListTile(
            title: Text('姓名:'),
            subtitle: Text('懂达一米大'),
          ),
          ListTile(
            title: Text('性别:'),
            subtitle: Text('女'),
          ),
          ListTile(
            title: Text('年龄:'),
            subtitle: Text('3岁'),
          ),
        ],
      ),
    );
  }
}
