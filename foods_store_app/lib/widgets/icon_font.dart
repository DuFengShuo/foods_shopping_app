import 'package:flutter/material.dart';

import '../res/colors.dart';

class IconFont extends StatelessWidget {
  const IconFont(
      {Key? key,
      required this.name,
      this.size = 30.0,
      this.color = Colours.app_main,
      this.bottomSize = 0})
      : super(key: key);
  final int name;
  final double size;
  final Color color;
  final double bottomSize;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(bottom: bottomSize),
      child: Icon(
        IconData(name, fontFamily: 'iconfontFonts'),
        size: size,
        color: color,
      ),
    );
  }
}
