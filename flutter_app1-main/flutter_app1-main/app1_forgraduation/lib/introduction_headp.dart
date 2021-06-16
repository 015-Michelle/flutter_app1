import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IntroductionHeadP extends StatelessWidget {
  const IntroductionHeadP({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 0.0),
      child: CircleAvatar(//圆头像
        backgroundImage: NetworkImage('https://tse1-mm.cn.bing.net/th?id=OIP.1gpWo9Tf9QU6KJArOa99TgHaJ3&w=68&h=94&c=8&rs=1&qlt=90&o=6&dpr=1.5&pid=3.1&rm=2',),
        radius: 80.0,
      ),
    );

  }
}
