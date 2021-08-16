import 'package:flutter/material.dart';
import 'package:foods_store_app/res/resources.dart';

class SelectNumPage extends StatefulWidget {
  final Function? callNumBack;
  const SelectNumPage({Key? key, this.callNumBack}) : super(key: key);

  @override
  _SelectNumPageState createState() => _SelectNumPageState();
}

class _SelectNumPageState extends State<SelectNumPage> {
  int num = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              setState(() {
                if(num!=0){
                  num--;
                  if(widget.callNumBack!=null){
                    widget.callNumBack!(num);
                  }
                }
              });
            },
            icon: Icon(
              Icons.remove_circle_outline,
              color: Colours.text_gray,
            ),
          ),
          Gaps.hGap5,
          Text(
            "$num",
            style: TextStyles.textSize16,
          ),
          Gaps.hGap5,
          IconButton(
            onPressed: () {
              setState(() {
                num++;
                if(widget.callNumBack!=null){
                  widget.callNumBack!(num);
                }
              });
            },
            icon: Icon(
              Icons.add_circle,
              color: Colours.app_main,
            ),
          ),
        ],
      ),
    );
  }
}
