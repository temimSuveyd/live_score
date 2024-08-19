import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:live_score/core/constent/custom_colors.dart';

class HomeDetails_AppBar extends StatelessWidget {
  const HomeDetails_AppBar({
    super.key, required this.title,
  });
final String title;
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 90,
        child: Row(
          children: [
            IconButton(
                onPressed: () {
                  Get.back();
                },
                icon:  Icon(
                  Icons.navigate_before,color: AppColor.width,
                  size: 30,
                )),
           const Spacer(),
            Text(
            title,
              style:
                  TextStyle(fontSize: 18, fontWeight: FontWeight.w600,color: AppColor.width),
            ),
        const    Spacer(),
          ],
        ),
      ),
    );
  }
}
