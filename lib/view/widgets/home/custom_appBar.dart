import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:live_score/controller/homeControler.dart';
import 'package:live_score/core/constent/custom_colors.dart';

class Home_AppBar extends GetView<HomeControlerImp> {
  const Home_AppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: SizedBox(
          height: 90,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "scorelive",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: AppColor.width),
              ),
       
            ],
          ),
        ),
      ),
    );
  }
}
