import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
import 'package:foods_store_app/res/resources.dart';
import 'package:foods_store_app/util/image_utils.dart';
import 'package:foods_store_app/util/screen_utils.dart';

class SelectGoodContentPage extends StatefulWidget {
  const SelectGoodContentPage({Key? key}) : super(key: key);

  @override
  _SelectGoodContentPageState createState() => _SelectGoodContentPageState();
}

class _SelectGoodContentPageState extends State<SelectGoodContentPage> {
  List allImage = [
    "https://yanxuan-item.nosdn.127.net/feefe540760f3f43cc3d1a7e65f846d9.png",
    "https://yanxuan-item.nosdn.127.net/8ba0a652e6162164ae83a22fcd35cd8e.png",
    "https://yanxuan-item.nosdn.127.net/705b982786502787db9592fa6014c627.png",
    "https://yanxuan-item.nosdn.127.net/e720ee099ad7edb39c0b5507a105c7a0.png"
  ];
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
  List<Widget> _generateList(int type) {
    if(type == 1){
      _list = [ '常温', '加冰', '少冰',"去冰",'冰沙','热'];
    }
    if(type == 2){
      _list = [ '正常', '少糖', '多糖',"无糖"];
    }
    return _list.map((item) => ButtonItem(text: item)).toList();
  }
  @override
  Widget build(BuildContext context) {
    return

      Material(
        color: Colors.transparent,
        child: Container(
          decoration: BoxDecoration(
              color: Colours.material_bg,
            // boxShadow: <BoxShadow>[
            //   BoxShadow(
            //       color: const Color(0xffDDDDDD),
            //       offset: const Offset(0.0, 0.0),
            //       blurRadius: 0,
            //       spreadRadius: 0.0),
            // ],
            borderRadius: BorderRadius.all(Radius.circular(12.r))


          ),
          // color: Colours.material_bg,
          alignment: Alignment.center,
          width: Screen.width(context)-60,
          height: Screen.height(context)-100,
          margin: EdgeInsets.only(left: 20.w,right: 20.w,bottom: 60.h),
          child: ListView(

            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colours.material_bg,
                  // boxShadow: <BoxShadow>[
                  //   BoxShadow(
                  //       color: const Color(0xffDDDDDD),
                  //       offset: const Offset(0.0, 0.0),
                  //       blurRadius: 0,
                  //       spreadRadius: 0.0),
                  // ],
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12.r),
                      topRight: Radius.circular(12.r)
                  )
                ),
                height: 220.h,

                child: Swiper(
                  itemBuilder: (BuildContext context, int index) {
                    return ClipRRect(
                        borderRadius: BorderRadius.circular(8.0.r),
                        ///图片顶部圆角
                        child: Image(
                          fit: BoxFit.cover,
                          image: ImageUtils.getImageProvider(
                              "${allImage[index]}",
                              holderImg: "state/company"),
                        ));
                  },
                  itemCount: allImage.length,
                  autoplay: true,
                  pagination: new SwiperPagination(
                      builder: DotSwiperPaginationBuilder(
                        color: Colours.text_gray_c,
                        activeColor: Colours.app_main,
                      )),
                ),
              ),
              Gaps.vGap16,
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("商品标题",style: TextStyles.textBold16,),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 8.0,right: 8.0,),
                child: Text("商品介绍，商品介绍商品介绍商品介绍商品介绍商品介绍商品介绍",style: TextStyles.textSize12.copyWith(color: Colours.text_gray),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("小料",style: TextStyles.textBold14,),
              ),
          Padding(
            child: Wrap(
              children: _generateList(0),
              spacing: 15.w,
              runSpacing: 1,
              alignment: WrapAlignment.start,
              runAlignment: WrapAlignment.end,
            ),
            padding: EdgeInsets.fromLTRB(20.w, 0, 10, 0),
          ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("温度",style: TextStyles.textBold14,),
              ),
              Padding(
                child: Wrap(
                  children: _generateList(1),
                  spacing: 12,
                  runSpacing: 2,
                  alignment: WrapAlignment.start,
                  runAlignment: WrapAlignment.end,
                ),
                padding: EdgeInsets.fromLTRB(20.w, 0, 10, 0),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("糖度",style: TextStyles.textBold14,),
              ),
              Padding(
                child: Wrap(
                  children: _generateList(2),
                  spacing: 12,
                  runSpacing: 2,
                  alignment: WrapAlignment.start,
                  runAlignment: WrapAlignment.end,
                ),
                padding: EdgeInsets.fromLTRB(20.w, 0, 10, 0),
              ),
              Container(
                height: 100,

              )
            ],


          ),

        ),
      );

  }




}

class ButtonItem extends StatelessWidget {
  ButtonItem({
    Key? key,
     this.text,
  }) : super(key: key);

  final String? text;

  @override
  Widget build(BuildContext context) {
    return Chip(
      backgroundColor: Colours.bg_color,

      // avatar: new CircleAvatar(backgroundColor: Colors.blue, child: Text('M')),
      label: new Text('$text',style: TextStyles.textSize10.copyWith(color: Colours.dark_text_gray),),
    );
  }
}