import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:live_score/controller/homeControler.dart';
import 'package:live_score/core/class/HeandlingDataView.dart';
import 'package:live_score/core/constent/custom_colors.dart';
import 'package:live_score/view/widgets/home/custom_LiveListViewBuilder.dart';
import 'package:live_score/view/widgets/home/custom_appBar.dart';
import 'package:live_score/view/widgets/home/custom_datePicer.dart';
import 'package:live_score/view/widgets/home/custom_liveLogo_seeMoreButton.dart';
import 'package:live_score/view/widgets/home/custom_topListView.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(
      () => HomeControlerImp(),
    );
    return  Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body:           GetBuilder<HomeControlerImp>(
        builder: (controller) => 
        Heandlingdataview(statusRecuest: controller.statusRecuest!, widget:     const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: CustomScrollView(
            slivers: [
              Home_AppBar(),
         Home_DatePicerTimeLine(),
              Home_LiveLogo_SeeMoreButton(
                text: "Live Now",
              ),
              Home_LiveListViewBuilder(),
              Home_LiveLogo_SeeMoreButton(
                text: "All fixtures",
              ),
              All_F_ListViewBuilder()
            ],
          ),
        ),),
      )       
    );
  }
}

