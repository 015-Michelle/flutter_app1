import 'package:app1_forgraduation/page_home.dart';
import 'package:app1_forgraduation/page_special_column.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'page_review.dart';
import 'page_special_column.dart';
import 'introduction_informations.dart';
import 'all_infromations.dart';

class PageIntroduction extends StatefulWidget {
  const PageIntroduction({Key key}) : super(key: key);

  @override
  _PageIntroductionState createState() => _PageIntroductionState();
}

class _PageIntroductionState extends State<PageIntroduction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
        child: ListView(
          children: [
          IntroductionHeadP(),
          IntorductionName(),
          IntroductionInformation(),
          FlatButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=>PageReview())
                );
              },
              child: Image.network('https://tse2-mm.cn.bing.net/th/id/OIP.xsA-3qUw6cqmd8nRfxk6TQHaEK?w=324&h=182&c=7&o=5&dpr=1.5&pid=1.7')
          ),
          Divider(),
          FlatButton(
              onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=>PageSpecialColumn())
                );
              },
              child: Image.network('https://tse2-mm.cn.bing.net/th/id/OIP.y5Ux-4MkyDwZFLT-wMJitAHaEL?w=261&h=180&c=7&o=5&dpr=1.5&pid=1.7',
                fit: BoxFit.fitWidth,)
          ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.home),
        onPressed: (){
          Navigator.pop(context);
        },
        backgroundColor: Colors.green,
        highlightElevation: 25.0,
        elevation: 20.0,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Widget IntroductionHeadP(){
    return Container(
      padding: const EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 0.0),
      child: CircleAvatar(//圆头像
        backgroundImage: NetworkImage('https://tse1-mm.cn.bing.net/th?id=OIP.1gpWo9Tf9QU6KJArOa99TgHaJ3&w=68&h=94&c=8&rs=1&qlt=90&o=6&dpr=1.5&pid=3.1&rm=2',),
        radius: 100.0,
      ),
    );
  }
  Widget IntorductionName(){
    return Container(
      padding: const EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 0.0),
      child: Column(
        children: [
          Container(
            child: Text(GetName(),style: TextStyle(fontWeight: FontWeight.bold,fontSize:30.0,fontFamily: 'Raleway'),),
            padding: const EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 10.0),
          ),
          Container(
            child: Image.network('https://tse2-mm.cn.bing.net/th/id/OIP.eAILzSUDtq9fBwa6nW_JKgHaGh?w=208&h=183&c=7&o=5&dpr=1.5&pid=1.7',
              width: 25.0,
              height: 25.0,),
          )
        ],
      ),
    );
  }
}


