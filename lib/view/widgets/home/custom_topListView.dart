import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:live_score/controller/homeControler.dart';
import 'package:live_score/data/models/home/fixtureModel.dart';
import 'package:live_score/view/widgets/home/custom_topCard.dart';

class All_F_ListViewBuilder extends StatelessWidget {
  const All_F_ListViewBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeControlerImp>(
      builder: (controller) => SliverList.builder(
        itemCount: controller.all_f.length >14? 14:controller.all_f.length,
        itemBuilder: (context, index) => All_F_Card(
          all_f_modle:
              All_F_model.fromJson(controller.all_f[index]),
        ),
      ),
    );
  }
}
