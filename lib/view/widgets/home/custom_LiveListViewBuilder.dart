import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:live_score/controller/homeControler.dart';
import 'package:live_score/data/models/home/LiveDataModel.dart';
import 'package:live_score/view/widgets/home/custom_liveCard.dart';

class Home_LiveListViewBuilder extends StatelessWidget {
  const Home_LiveListViewBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: GetBuilder<HomeControlerImp>(
        builder: (controller) => SizedBox(
          height: 180,
          child: ListView.builder(
            itemCount: controller.liveScore.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Home_LiveCard(
                onTap: () {
                  controller.goToDetails(
                      Homelivedatamodel.fromJson(controller.liveScore[index])
                          .countryName!,
                      Homelivedatamodel.fromJson(controller.liveScore[index])
                          .countryImsge!,
                      Homelivedatamodel.fromJson(controller.liveScore[index])
                          .team_1_Image!,
                      Homelivedatamodel.fromJson(controller.liveScore[index])
                          .team_1_goal!,
                      Homelivedatamodel.fromJson(controller.liveScore[index])
                          .team_1_name!,
                      Homelivedatamodel.fromJson(controller.liveScore[index])
                          .team_2_Image!,
                      Homelivedatamodel.fromJson(controller.liveScore[index])
                          .team_2_goal!,
                      Homelivedatamodel.fromJson(controller.liveScore[index])
                          .team_2_name!,
                      Homelivedatamodel.fromJson(controller.liveScore[index])
                          .fixtures_id!,
                      Homelivedatamodel.fromJson(controller.liveScore[index])
                          .league!,
                      Homelivedatamodel.fromJson(controller.liveScore[index])
                          .season!,
                      Homelivedatamodel.fromJson(controller.liveScore[index])
                          .team_1_id!,
                      Homelivedatamodel.fromJson(controller.liveScore[index])
                          .team_2_id!);
                },
                homelivedatamodel:
                    Homelivedatamodel.fromJson(controller.liveScore[index])),
          ),
        ),
      ),
    );
  }
}
