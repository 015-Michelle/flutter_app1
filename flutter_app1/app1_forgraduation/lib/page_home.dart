import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'page_introduction.dart';

class PageHome extends StatefulWidget {
  const PageHome({Key key}) : super(key: key);

  @override
  _PageHomeState createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {
  TextEditingController _name=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.lightGreen,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(padding: const EdgeInsets.all(10.0),
              child: TextField(
                keyboardType: TextInputType.text,
                maxLines: 1,
                cursorColor: Colors.red,//光标
                style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red,fontSize: 40.0),
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(5.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide(color: Colors.black,width: 200.0),
                  ),
                ),
                controller: _name,
                onChanged: (value){//不写也可以
                  print(_name.text.toString());
                },
              ),
            ),

            // Expanded(
            //   child: TextField(
            //     keyboardType: TextInputType.text,
            //     maxLines: 1,
            //     cursorColor: Colors.red,//光标
            //     style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),
            //     decoration: InputDecoration(
            //       contentPadding: const EdgeInsets.all(5.0),
            //       border: OutlineInputBorder(
            //         borderRadius: BorderRadius.circular(10.0),
            //         borderSide: BorderSide(color: Colors.black,width: 200.0),
            //       ),
            //     ),
            //   ),
            // ),
            Padding(padding: const EdgeInsets.all(10.0),
              child: FlatButton(//go按钮
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                color: Colors.white,
                minWidth: 10.0,
                onPressed: (){
                  if(_name.text.trim()=='tangtianmi'){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>PageIntroduction()));
                  }else{
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Row(children: [
                      Icon(Icons.error_outline,color: Colors.red,),
                      Text('错了哦，重新再输一下',style: TextStyle(color: Colors.red),)],),
                      behavior: SnackBarBehavior.floating,
                      duration: Duration(seconds: 2),
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50.0))
                      ),
                    ));
                  }
                  //Navigator.of(context).push(MaterialPageRoute(builder: (context)=>PageIntroduction()));
                },
                child: Text('GO',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

