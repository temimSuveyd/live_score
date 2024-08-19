import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:live_score/controller/homeDetailsController.dart';
import 'package:live_score/view/widgets/homeDetails/h2h/custom_h2hDetails.dart';
import 'package:live_score/view/widgets/homeDetails/lineUp/custom_lineUpDetails.dart';
import 'package:live_score/view/widgets/homeDetails/standings/standingsDetails.dart';
import 'package:live_score/view/widgets/homeDetails/stats/custom_statsDetails.dart';

class HomeDetails_ListViewBuilder extends StatelessWidget {
  const HomeDetails_ListViewBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: GetBuilder<HomeDetailsControllerImp>(builder: (controller) {
        if (controller.index == 0) {
          return const LineUpCard();
        } else if (controller.index == 1) {
          return const Stats();
        } else if (controller.index == 2) {
          return const H2HDetails();
        } else if (controller.index == 3) {
          return const StandingsDetails();
        } else {
          return const SizedBox();
        }
      }),
    );
  }
}
