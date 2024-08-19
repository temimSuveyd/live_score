import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:live_score/controller/homeDetailsController.dart';
import 'package:live_score/core/class/HeandlingDataView.dart';
import 'package:live_score/data/models/homeDetails/h2hModel.dart';
import 'package:live_score/view/widgets/homeDetails/h2h/custom_card.dart';


class H2HDetails extends GetView<HomeDetailsControllerImp> {
  const H2HDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeDetailsControllerImp>(
      builder: (controller) => Heandlingdataview(statusRecuest: controller.statusRecuest!, widget:    Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ...List.generate(controller.h2hDataList.length, (index) =>  H2H_Card(h2hModel: H2HModel.frojson(controller.h2hDataList[index]),),)
        ],
      ), )

    );
  }
}










