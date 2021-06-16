import 'package:flutter/material.dart';
import 'page_home.dart';

class HomeSplash extends StatefulWidget {
  const HomeSplash({Key key}) : super(key: key);

  @override
  _HomeSplashState createState() => _HomeSplashState();
}

class _HomeSplashState extends State<HomeSplash> with SingleTickerProviderStateMixin{

  AnimationController _controller;
  Animation _animation;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller=AnimationController(vsync: this,duration: Duration(milliseconds: 3000));
    _animation=Tween(begin: 0.0,end: 1.0).animate(_controller);

    //监听动画状态
    _animation.addStatusListener((status) {
      if(status==AnimationStatus.completed) {
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context)=>PageHome()),
                (route) => route==null,
        );
      }
      _controller.forward();//播放动画
    });
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _animation,
      child: Image.network('https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1361135963,570304265&fm=26&gp=0.jpg',
        scale: 2.0,
        fit: BoxFit.cover,
      ),
    );
  }
}
