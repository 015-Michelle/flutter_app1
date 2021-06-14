import 'package:flutter/material.dart';
class PageReview extends StatefulWidget {
  const PageReview({Key key}) : super(key: key);

  @override
  _PageReviewState createState() => _PageReviewState();
}

class _PageReviewState extends State<PageReview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:Text('回顾'),
      ),
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
