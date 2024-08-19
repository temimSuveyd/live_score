import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:live_score/controller/homeDetailsController.dart';
import 'package:live_score/core/class/HeandlingDataView.dart';
import 'package:live_score/core/constent/custom_colors.dart';
import 'package:live_score/data/models/homeDetails/lineUpModel.dart';
import 'package:live_score/view/widgets/homeDetails/lineUp/custom_Card.dart';

class LineUpCard extends StatelessWidget {
  const LineUpCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeDetailsControllerImp>(builder: (controller) => Heandlingdataview(statusRecuest: controller.statusRecuest!, widget:  Container(
          color: AppColor.cardsC,
          child: Column(

            
            children: [
              ...List.generate(
                controller.lineUpDataList.length,
                (index) => LineUP_Card(
                  lineUpModel:
                      LineUpModel.frojson(controller.lineUpDataList[index]),
                ),
              )
            ],
          )), )

    );
  }
}
