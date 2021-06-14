import 'package:flutter/material.dart';
class PageSpecialColumn extends StatefulWidget {
  const PageSpecialColumn({Key key}) : super(key: key);

  @override
  _PageSpecialColumnState createState() => _PageSpecialColumnState();
}

class _PageSpecialColumnState extends State<PageSpecialColumn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('毕业季专栏'),
      ),
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
