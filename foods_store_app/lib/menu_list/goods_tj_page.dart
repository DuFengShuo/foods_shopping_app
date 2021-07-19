import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
import 'package:foods_store_app/menu_list/widget/goods_add_cell.dart';
import 'package:foods_store_app/res/colors.dart';
import 'package:foods_store_app/res/gaps.dart';
import 'package:foods_store_app/util/image_utils.dart';
class GoodsTjPage extends StatefulWidget {
  const GoodsTjPage({Key? key}) : super(key: key);

  @override
  _GoodsTjPageState createState() => _GoodsTjPageState();
}

class _GoodsTjPageState extends State<GoodsTjPage> {
  @override
  Widget build(BuildContext context) {
    return
      ListView(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        children: [
          Container(
            color: Colours.material_bg,
            margin: EdgeInsets.all(10),
            height: 180,
            child: Swiper(
              itemBuilder: (BuildContext context, int index) {
                return Image(
                  image: ImageUtils.getImageProvider(
                      "https://yanxuan-item.nosdn.127.net/feefe540760f3f43cc3d1a7e65f846d9.png",
                      holderImg: "state/company"),
                );
              },
              itemCount: 4,
              autoplay: true, //
              // pagination: new SwiperPagination(),
              viewportFraction: 0.8,
              scale: 0.6,
            ),
          ),
          Gaps.vGap10,
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 12,
            itemBuilder: (BuildContext context, int index){
              return GoodAddCellWidget();
            })
        ],
      );

  }
}
