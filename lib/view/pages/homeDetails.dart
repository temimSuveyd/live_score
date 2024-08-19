import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:live_score/controller/homeDetailsController.dart';
import 'package:live_score/core/class/HeandlingDataView.dart';
import 'package:live_score/core/constent/custom_colors.dart';
import 'package:live_score/view/widgets/homeDetails/custom_appBar.dart';
import 'package:live_score/view/widgets/homeDetails/custom_card.dart';
import 'package:live_score/view/widgets/homeDetails/custom_listviewBuilder.dart';
import 'package:live_score/view/widgets/homeDetails/custom_tapping.dart';

class HomeDetailsPage extends GetView<HomeDetailsControllerImp> {
  const HomeDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => HomeDetailsControllerImp());
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: GetBuilder<HomeDetailsControllerImp>(
          builder: (controller) => Heandlingdataview(statusRecuest: controller.statusRecuest!, widget:    Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: CustomScrollView(
                    slivers: [
                       HomeDetails_AppBar(
                        title: controller.countryName!
                      ),
                  
                      HomeDetails_Card(
                        onTap:(){

                          controller.getH2HData();
                          log("--------------------------");
                        } ,
                        countryImage: controller.countryImage!,
                        countryName: controller.countryName!,
                        team_1_Image: controller.team_1_Image!,
                        team_1_goal: controller.team_1_goal!,
                        team_1_name: controller.team_1_name!,
                        team_2_Image: controller.team_2_Image!,
                        team_2_goal: controller.team_2_goal!,
                        team_2_name: controller.team_2_name!,
                      ),
                      const HomeDetail_Tabbing(),
                      const HomeDetails_ListViewBuilder(),
                    
                    ],
                  ),
                ), )
          
              ),
    );
  }
}
