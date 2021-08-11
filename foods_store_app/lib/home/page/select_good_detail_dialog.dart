import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foods_store_app/res/colors.dart';
import 'package:foods_store_app/res/resources.dart';
import 'package:foods_store_app/util/screen_utils.dart';
import 'package:foods_store_app/widgets/base_dialog.dart';

class SelectGoodDetailPage extends StatefulWidget {
  const SelectGoodDetailPage({Key? key}) : super(key: key);

  @override
  _SelectGoodDetailPageState createState() => _SelectGoodDetailPageState();
}

class _SelectGoodDetailPageState extends State<SelectGoodDetailPage> {
  @override
  Widget build(BuildContext context) {
    return BaseDialog(
        onPressed: () async {
        },
        title: "选规格",
        child: Container(
          child: ListView(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            children: [
              Container(
                child: Text(""),
              )
            ],
          ),
        )

    );
  }
}
