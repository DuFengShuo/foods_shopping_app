import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
import 'package:foods_store_app/home/widget/good_wrap_widget.dart';
import 'package:foods_store_app/home/widget/select_num_cell.dart';
import 'package:foods_store_app/res/resources.dart';
import 'package:foods_store_app/util/image_utils.dart';
import 'package:foods_store_app/util/screen_utils.dart';
import 'package:foods_store_app/widgets/my_button.dart';

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

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        decoration: BoxDecoration(
            color: Colours.material_bg,
            borderRadius: BorderRadius.all(Radius.circular(12.r))),
        // color: Colours.material_bg,
       // alignment: Alignment.center,
        width: Screen.width(context) - 60,
        // height: Screen.height(context) - 60,
        margin: EdgeInsets.only(left: 20.w, right: 20.w, bottom: 80.h,top: 20.h),
        child: ListView(
          shrinkWrap: true,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colours.material_bg,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12.r),
                      topRight: Radius.circular(12.r))),
              height: 160.h,
              child:
              Stack(
                children: [
                  Swiper(
                    itemBuilder: (BuildContext context, int index) {
                      return ClipRRect(
                        //  borderRadius: BorderRadius.circular(8.0.r),
                        ///图片顶部圆角
                          child: Image(
                            fit: BoxFit.cover,
                            image: ImageUtils.getImageProvider(
                              "${allImage[index]}",
                            ),
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

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Expanded(child: Gaps.empty),

                        Icon(Icons.share,color: Colours.text,size: 20,),
                        Gaps.hGap5,
                        IconButton(onPressed: (){
                          Navigator.pop(context);

                        }, icon:  Icon(Icons.cancel,color: Colours.text,size: 25,),)


                      ],
                    ),
                  )

                ],
              )

            ),
            Gaps.vGap10,
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "商品标题",
                style: TextStyles.textBold16,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 8.0,
                right: 8.0,
              ),
              child: Text(
                "商品介绍，商品介绍商品介绍商品介绍商品介绍商品介绍商品介绍",
                style: TextStyles.textSize12.copyWith(color: Colours.text_gray),
              ),
            ),
            Gaps.vGap15,
            Padding(
              padding: EdgeInsets.only(left: 8.w,top: 5.h),
              child: Text(
                "小料",
                style: TextStyles.textBold14,
              ),
            ),
            Padding(
              child: GoodWrapPage(
                type: 0,
              ),
              padding: EdgeInsets.fromLTRB(20.w, 0, 10, 0),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.w,top: 5.h),
              child: Text(
                "温度",
                style: TextStyles.textBold14,
              ),
            ),
            Padding(
              child: GoodWrapPage(
                type: 1,
              ),
              padding: EdgeInsets.fromLTRB(20.w, 0, 10, 0),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.w,top: 5.h),
              child: Text(
                "糖度",
                style: TextStyles.textBold14,
              ),
            ),
            Padding(
              child: GoodWrapPage(
                type: 2,
              ),
              padding: EdgeInsets.only(left: 20.w),
            ),
            Gaps.vGap10,
            Container(
              // height: 100,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Gaps.line,
                  // Gaps.vGap10,
                  Row(
                    children: [
                      Gaps.hGap10,
                      Expanded(
                          child: Text(
                        "￥66",
                        style: TextStyles.textBold18
                            .copyWith(color: Colours.app_main),
                      )),
                      SelectNumPage(),
                      Gaps.hGap10,
                    ],
                  ),
                  // Gaps.vGap10,
                  Padding(
                    padding: EdgeInsets.only(
                      left: 12.w,
                    ),
                    child: Text(
                      "已选：火腿，正常冰，少糖",
                      style: TextStyles.textSize12
                          .copyWith(color: Colours.text_gray),
                    ),
                  ),
                  Gaps.vGap10,

                  Padding(
                    padding: EdgeInsets.only(left: 20.w, right: 20.w),
                    child: MyButton(
                        minHeight: 40.h,
                        radius: 40.h,
                        backgroundColor: Colours.app_main,
                        text: "选好了",
                        textColor: Colours.material_bg,
                        onPressed: () {
                          Navigator.pop(context);

                        }),
                  ),
                  Gaps.vGap15,
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
