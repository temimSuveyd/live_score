import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:live_score/controller/homeDetailsController.dart';
import 'package:live_score/core/constent/custom_colors.dart';
import 'package:live_score/data/dataScore/static/HomeDetails.dart';
import 'package:live_score/view/widgets/home/custom_tabbingCard.dart';
import 'package:live_score/view/widgets/homeDetails/custom_tappingCard.dart';

class HomeDetail_Tabbing extends StatelessWidget {
  const HomeDetail_Tabbing({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: GetBuilder<HomeDetailsControllerImp>(
        builder: (controller) => Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: SizedBox(
            height: 30,
            child: ListView.builder(
              itemCount: homeDetails.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => HomeDetailsTabbing_Card(
                onTap: () {
                  controller.changeTapping(index);
                },
                color: controller.index == index
                    ? AppColor.primary
                    : Colors.transparent,
                text: homeDetails[index].text,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
