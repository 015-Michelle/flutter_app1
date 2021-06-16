import 'package:flutter/material.dart';
class PageSpecialColumn extends StatefulWidget {
  const PageSpecialColumn({Key key}) : super(key: key);

  @override
  _PageSpecialColumnState createState() => _PageSpecialColumnState();
}

class _PageSpecialColumnState extends State<PageSpecialColumn> with TickerProviderStateMixin{
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController=TabController(length: 2, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Text(''),
          title: Text('毕业季',style: TextStyle(color: Colors.green),),
          backgroundColor: Colors.white,
          elevation: 0,
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
              Tab(text: '毕业照',),
              Tab(text: '留言',),
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: [
            Center(
              child: Text('毕业照',),
            ),
            Center(
              child: Text('留言'),
            ),
          ],
        )
    );
  }
}

// class PageSpecialColumn extends StatelessWidget {
//   const PageSpecialColumn({Key key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Text('毕业季专栏'),
//       ),
//     );
//   }
// }
