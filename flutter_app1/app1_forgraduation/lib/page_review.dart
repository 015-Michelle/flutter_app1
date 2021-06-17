import 'package:app1_forgraduation/all_infromations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

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
            //child: Text('学习',),
            child: ReviewStudy(),
          ),
          Center(
            child: ReviewStudy(),
          ),
          Center(
            child: ReviewStudy(),
          )
        ],
      )
    );
  }
}

class ReviewStudy extends StatelessWidget {
  const ReviewStudy({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //交错界面
    // return GridView(
    //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    //     crossAxisCount: 3,
    //     childAspectRatio: 1.0
    //   ),
    //   children: [
    //     StaggeredGridView.countBuilder(
    //       crossAxisCount: 4,
    //       itemBuilder: (context,index){
    //         return Container(
    //           color: Colors.green,
    //           child: Center(
    //             child: CircleAvatar(
    //               backgroundColor: Colors.white,
    //               child: Text('$index'),
    //             ),
    //           ),
    //         );
    //       },
    //       staggeredTileBuilder: (index){
    //         StaggeredTile.count(2, index.isEven?2:1);
    //       },
    //       mainAxisSpacing: 4.0,
    //       crossAxisSpacing: 4.0,
    //     ),
    //   ],
    // );
    //CustomScrollView
    return CustomScrollView(
      semanticChildCount: 5,
      slivers: [
        // SliverAppBar(
        //   pinned: true,
        //   expandedHeight: 100.0,
        //   flexibleSpace: FlexibleSpaceBar(
        //     title: Text('学习'),
        //     background: Image.network('https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=2961974070,137066290&fm=26&gp=0.jpg',
        //       fit:BoxFit.cover),
        //   ),
        //   backgroundColor: Colors.green,
        // ),
        SliverPadding(
          padding: const EdgeInsets.all(5.0),
          sliver: SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 5.0,
              crossAxisSpacing: 5.0,
              childAspectRatio: 1.0,
            ),
            delegate: SliverChildBuilderDelegate((context,index){
              //列表项
              return Container(
                alignment: Alignment.center,
                color: Colors.white,
                child: Image.asset(review_study_photos[index],fit: BoxFit.fill,),
              );

            },
            childCount: review_study_photos.length),
          ),

        ),
        // SliverFixedExtentList(
        //   delegate: SliverChildBuilderDelegate((context,index){
        //     //列表项
        //     return Container(
        //       alignment: Alignment.center,
        //       color: Colors.green,
        //       child: Text('$index'),
        //     );
        //   },
        //   childCount: 5), itemExtent: 5,
        // )
      ],
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
