import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:live_score/controller/homeDetailsController.dart';
import 'package:live_score/core/class/HeandlingDataView.dart';
import 'package:live_score/core/constent/custom_colors.dart';
import 'package:live_score/data/models/homeDetails/standingsModel.dart';
import 'package:live_score/view/widgets/homeDetails/standings/custom_appBar.dart';
import 'package:live_score/view/widgets/homeDetails/standings/custom_card.dart';

class StandingsDetails extends GetView<HomeDetailsControllerImp> {
  const StandingsDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {



    return GetBuilder<HomeDetailsControllerImp>(
      builder: (controller) => Heandlingdataview(statusRecuest: controller.statusRecuest!, widget:      Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
        color: AppColor.cardsC,
        child: Column(
          children: [
          const  Standings_appBar(),
            ...List.generate(
              controller.standingsDataList.length,
              (index) =>  Standing_Card(
                color:  4 > index ? Colors.blue :Colors.red ,
                
                standingsmodel: Standingsmodel.frojson(controller.standingsDataList[index]),),
            )
          ],
        ),
      ),)

    );
  }
}

