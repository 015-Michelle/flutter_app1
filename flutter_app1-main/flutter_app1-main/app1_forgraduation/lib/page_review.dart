import 'package:flutter/material.dart';
class PageReview extends StatefulWidget {
  const PageReview({Key key}) : super(key: key);

  @override
  _PageReviewState createState() => _PageReviewState();
}

class _PageReviewState extends State<PageReview> with TickerProviderStateMixin{
  TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController=TabController(length: 3, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Text(''),
        title: Text('我的回顾',style: TextStyle(color: Colors.green),),
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        bottom: TabBar(
          controller: _tabController,
          isScrollable: false,
          indicatorColor: Colors.green,//下标的颜色
          indicatorWeight: 2.0,
          indicatorSize:  TabBarIndicatorSize.tab,
          unselectedLabelColor: Colors.grey,
          labelStyle: TextStyle(
            color: Colors.green
          ),
          labelColor: Colors.green,
          tabs: [
            Tab(text: '学习',),
            Tab(text: '工作',),
            Tab(text: '其他',)
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Center(
            child: Text('学习',),
          ),
          Center(
            child: Text('工作'),
          ),
          Center(
            child: Text('其他'),
          )
        ],
      )
    );
  }
}

// class PageReview extends StatelessWidget {
//   const PageReview({Key key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child:Text('回顾'),
//       )
//     );
//   }
// }
