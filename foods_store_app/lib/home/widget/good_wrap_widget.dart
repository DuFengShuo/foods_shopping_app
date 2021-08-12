import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:foods_store_app/res/resources.dart';

class GoodWrapPage extends StatefulWidget {
  final int type;

  const GoodWrapPage({Key? key, required this.type}) : super(key: key);

  @override
  _GoodWrapPageState createState() => _GoodWrapPageState();
}

class _GoodWrapPageState extends State<GoodWrapPage> {
  List<String> _list = [
    '火腿',
    '芝士',
    '肉',
    '辣椒',
    '大蒜',
    '番茄酱',
    '甜辣酱',
    '肉末',
  ];
  int selected = 0;

  List<Widget> _generateList(int type) {
    if (type == 1) {
      _list = ['常温', '加冰', '少冰', "去冰", '热'];
    }
    if (type == 2) {
      _list = ['正常', '少糖', '多糖', "无糖"];
    }
    List<Widget> dataList = [];
    for (int i = 0; i < _list.length; i++) {
      dataList.add(GoodMenu(
        title: _list[i],
        index: i,
        parent: this,
      ));
    }
    return dataList;
  }

  onSelectedChanged(int _index) {
    setState(() {
      selected = _index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: _generateList(widget.type),
      spacing: 15.w,
      // runSpacing: 1,
      alignment: WrapAlignment.start,
      runAlignment: WrapAlignment.end,
    );
  }
}

class GoodMenu extends StatelessWidget {
  final int? index;
  final widget;
  final parent;
  final String? title;

  const GoodMenu({Key? key, this.index, this.widget, this.parent, this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
        label: Text(
          "$title",
          style: TextStyles.textSize12.copyWith(
              color: parent.selected == index
                  ? Colours.material_bg
                  : Colours.text),
        ),
        //未选定的时候背景
        selectedColor: Colours.app_main,
        //被禁用得时候背景
        disabledColor: Colours.bg_color,
        labelStyle: TextStyle(
            fontWeight: FontWeight.w200, fontSize: 15.0, color: Colours.text),
        labelPadding: EdgeInsets.only(left: 8.0, right: 8.0),
        materialTapTargetSize: MaterialTapTargetSize.padded,
        onSelected: (bool value) {
          parent.onSelectedChanged(index);
        },
        selected: parent.selected == index);
  }
}
