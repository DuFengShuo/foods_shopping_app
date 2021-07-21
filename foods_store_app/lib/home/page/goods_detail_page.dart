import 'dart:ui';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:foods_store_app/res/resources.dart';
import 'package:foods_store_app/widgets/icon_font.dart';
import 'package:foods_store_app/widgets/swiper_widget.dart';


class SliverAppBarPage extends StatefulWidget {
  const SliverAppBarPage({Key? key}) : super(key: key);

  @override
  _SliverAppBarPageState createState() => _SliverAppBarPageState();
}

class _SliverAppBarPageState extends State<SliverAppBarPage> {
  List allImage = [
    "https://yanxuan-item.nosdn.127.net/feefe540760f3f43cc3d1a7e65f846d9.png",
    "https://yanxuan-item.nosdn.127.net/8ba0a652e6162164ae83a22fcd35cd8e.png",
    "https://yanxuan-item.nosdn.127.net/705b982786502787db9592fa6014c627.png",
    "https://yanxuan-item.nosdn.127.net/e720ee099ad7edb39c0b5507a105c7a0.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverPersistentHeader(
            // floating: true,
            pinned: true,
            delegate: SliverCustomHeaderDelegate(
              title: '商品详情页',
              collapsedHeight: 54.h,
              //appbar高度
              expandedHeight: 300.h,
              type: "personnel",
              paddingTop: MediaQuery.of(context).padding.top,
              sliverHeaderWidget:
              SwipterWidget(
                height: 240.h,
                allDatas: allImage,
                radius: 0,
              )
              // Container(
              //   decoration: BoxDecoration(
              //     image: DecorationImage(
              //       image: NetworkImage(
              //           "https://yanxuan-item.nosdn.127.net/8ba0a652e6162164ae83a22fcd35cd8e.png"),
              //       //背景图片
              //       fit: BoxFit.cover,
              //     ),
              //   ),
              //   height: 240.h,
              //   child: ClipRRect(
              //     // make sure we apply clip it properly
              //     child: BackdropFilter(
              //       //背景滤镜
              //       filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15), //背景模糊化
              //       child: Container(
              //         alignment: Alignment.center,
              //         color: Colors.grey.withOpacity(0.1),
              //         child: Text(
              //           "Header Stop View", //前景文字
              //           style: TextStyle(
              //               fontSize: 28, fontWeight: FontWeight.bold),
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
            ),
          ),
          SliverAnimatedList(
            initialItemCount: 1,
            itemBuilder:
                (BuildContext context, int index, Animation<double> animation) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Gaps.vGap15,
                 Row(
                   children: [
                      Gaps.hGap10,
                     Text( "￥22",
                       maxLines: 1,
                       overflow: TextOverflow.ellipsis,
                       style: TextStyles.textBold26
                           .copyWith(
                           color: Colours.red),),
                     Expanded(child: Gaps.empty),
                     Text("3343人购买",style: TextStyles.textSize12.copyWith(color: Colours.text_gray),),
                     Gaps.hGap10,
                   ],
                 ),
                  Gaps.vGap15,
                  Padding(
                    padding:  EdgeInsets.only(left: 15.w,right: 15.w),
                    child: Text(
                      "超级三明治,材料优选,2000g,0热量,减肥必备,夏天来一箱,美得不行",
                      maxLines: 3,
                      style: TextStyles.textBold15
                          .copyWith(
                          color: Colors.black,
                          fontWeight:
                          FontWeight.w400),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Gaps.vGap5,
                  Padding(
                    padding: EdgeInsets.only(
                        left: 15.w, right: 15.w),
                    child: Text(
                      "一个管饱哦!",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyles.textSize12
                          .copyWith(
                          color: Colours.text_gray),
                    ),
                  ),
                  Gaps.vGap15,
                  Gaps.lineV,
                  Container(
                    height: 200,

                  ),
                   Gaps.lineV,
                ],
              );
            },
          )
          // SliverFillRemaining(
          //   fillOverscroll:true,
          //   child: PersonDetailContent(
          //     model: model,
          //   ),
          // )
        ],
      ),
    );
  }
}

class SliverCustomHeaderDelegate extends SliverPersistentHeaderDelegate {
  final double? collapsedHeight;
  final double? expandedHeight;
  final double? paddingTop;
  final String? coverImgUrl;
  final String? title;
  final String? type;

  final Widget? sliverHeaderWidget;

  SliverCustomHeaderDelegate({
    this.collapsedHeight,
    this.expandedHeight,
    this.paddingTop,
    this.coverImgUrl,
    this.title,
    this.type,
    this.sliverHeaderWidget,
  });

  @override
  double get minExtent => this.collapsedHeight! + this.paddingTop!;

  @override
  double get maxExtent => this.expandedHeight!;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }

  Color makeStickyHeaderBgColor(shrinkOffset, Color color) {
    final int alpha = (shrinkOffset / (this.maxExtent - this.minExtent) * 255)
        .clamp(0, 255)
        .toInt();
    return color.withAlpha(alpha);
  }

  Color makeStickyHeaderTextColor(shrinkOffset, isIcon) {
    if (shrinkOffset <= 54.h) {
      return isIcon ? Colors.white : Colors.transparent;
    } else {
      final int alpha = (shrinkOffset / (this.maxExtent - this.minExtent) * 255)
          .clamp(0, 255)
          .toInt();
      return Color.fromARGB(alpha, 0, 0, 0);
    }
  }

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      height: this.maxExtent,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            child: sliverHeaderWidget ??
                Container(
                    child: Image.network(this.coverImgUrl!, fit: BoxFit.cover)),
          ),
          // 收起头部
          Positioned(
              left: 0,
              right: 0,
              top: 0,
              child: AppBar(
                elevation: 0,
                leading: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  tooltip: 'icon_back',
                  padding: const EdgeInsets.all(12.0),
                  icon: IconFont(
                      name: 0xe613, size: 16, color: Colors.black),
                ),
                brightness: Brightness.light,
                backgroundColor: this.makeStickyHeaderBgColor(shrinkOffset, Colours.material_bg),
                centerTitle: true,
                // automaticallyImplyLeading: false,
                title: Text(
                  "$title",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: this.makeStickyHeaderBgColor(
                        shrinkOffset, Colours.text), // 标题颜色
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
