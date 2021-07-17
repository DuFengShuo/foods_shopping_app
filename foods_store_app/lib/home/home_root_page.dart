import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foods_store_app/home/page/tj_page.dart';
import 'package:foods_store_app/res/resources.dart';
import 'package:foods_store_app/widgets/my_card.dart';

class HomeRootPage extends StatefulWidget {
  const HomeRootPage({Key? key}) : super(key: key);

  @override
  _HomeRootPageState createState() => _HomeRootPageState();
}

class _HomeRootPageState extends State<HomeRootPage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  late ScrollController nestScroll;
  List<String> contentTabData = [
    "推荐",
    "上新",
    "活动",
    "周边",
  ];

  FlexibleSpaceBar buildFlexibleSpaceBar() {
    return FlexibleSpaceBar(
      collapseMode: CollapseMode.pin,
      centerTitle: true,
      background: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                "https://yanxuan-item.nosdn.127.net/e4d67a42618560457af6b915f2772787.jpg"),
            //背景图片
            fit: BoxFit.cover,
          ),
        ),
        height: 320.h,
        child: Container(
          decoration: BoxDecoration(
            color: Colours.material_bg,
            borderRadius: BorderRadius.all(Radius.circular(10.r))
          ),
          margin: EdgeInsets.only(top: 220.h,left: 10.w,right: 10.w,bottom: 60.h),
          height: 100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("门店吃",style: TextStyles.textBold26,),
              Text("外卖",style: TextStyles.textBold26,),


            ],
          ),
        ),

        // child: ClipRRect(
        //   // make sure we apply clip it properly
        //   child: BackdropFilter(
        //     //背景滤镜
        //     filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15), //背景模糊化
        //     child: Container(
        //       alignment: Alignment.center,
        //       color: Colors.grey.withOpacity(0.1),
        //       // child: Text(
        //       //   "Header Stop View", //前景文字
        //       //   style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        //       // ),
        //     ),
        //   ),
        // ),
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController =
        new TabController(length: contentTabData.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colours.app_main,
      //   brightness: Brightness.dark,
      //   centerTitle: true,
      //   elevation: 0,
      //   title: Text(
      //     "首页",
      //     style: TextStyles.textSize16,
      //   ),
      // ),
      body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool b) {
            return [
              SliverAppBar(

                  ///true SliverAppBar 不会滑动
                  pinned: true,
                  automaticallyImplyLeading: false,

                  ///是否随着滑动隐藏标题
                  floating: true,
                  // snap: true,
                  forceElevated: true,
                  backgroundColor: Colours.material_bg,

                  ///SliverAppBar展开的高度
                  expandedHeight: 420.h,
                  flexibleSpace: buildFlexibleSpaceBar(),
                  elevation: 0.3,
                  bottom: PreferredSize(
                    preferredSize: Size.fromHeight(50.h),
                    child: Container(
                      color: Colours.material_bg,
                      height: 50.h,
                      child: TabBar(
                          // indicatorPadding: EdgeInsets.only(left: 8, right: 8),
                          controller: tabController,
                          indicatorSize: TabBarIndicatorSize.label,
                          indicatorColor: Colours.app_main,
                          unselectedLabelColor: Colours.dark_text_gray,
                          labelColor: Colours.app_main,
                          // isScrollable: true,
                          onTap: (value) {
                            print("点了第$value个");
                          },
                          tabs: contentTabData
                              .map((e) => Tab(text: "$e"))
                              .toList()),
                    ),
                  )),
            ];
          },

          ///主体部分
          body: TabBarView(
            controller: tabController,
            children: contentTabData.map((e) {
              if (e == "推荐") {
                return TjPage();
              } else {
                return Container(
                  color: Colours.bg_color,
                  child: ListView.separated(
                      // physics: BouncingScrollPhysics(),
                    padding: EdgeInsets.only(top: 5.h),
                      itemCount: 30,
                      separatorBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Gaps.line,
                        );
                      },
                      itemBuilder: (BuildContext context, int index) {
                        return InkWell(
                          splashColor: Colours.dark_text_disabled,
                          onTap: () {},
                          child:
                          Padding(
                            padding:  EdgeInsets.only(left: 8.w,bottom: 5,right: 8.w),
                            child: MyCard(

                              color: Colours.material_bg,
                              child:
                              Container(
                                height: 200.h,
                                child: Center(
                                 child: Text(
                                    "${e} $index",
                                    style: TextStyles.text,
                                  ),

                                ),
                              ),
                            ),
                          )

                        );
                      }),
                );
              }
            }).toList(),
          )),
    );
  }
}