import 'package:flutter/material.dart';
import 'package:foods_store_app/widgets/my_scroll_view.dart';
class MineRootPage extends StatefulWidget {
  const MineRootPage({Key? key}) : super(key: key);

  @override
  _MineRootPageState createState() => _MineRootPageState();
}

class _MineRootPageState extends State<MineRootPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyScrollView(children: [


      ],

      ),
    );
  }
}
