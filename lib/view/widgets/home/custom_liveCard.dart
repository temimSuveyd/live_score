import 'package:flutter/material.dart';
import 'package:live_score/core/constent/custom_colors.dart';
import 'package:live_score/data/models/home/LiveDataModel.dart';
import 'package:live_score/view/widgets/home/custom_LiveCardGoal.dart';
import 'package:live_score/view/widgets/home/custom_liveCardCountryLogo.dart';
import 'package:live_score/view/widgets/home/custom_liveCardTeamLogo.dart';
import 'package:live_score/view/widgets/home/custom_detailsButton.dart';

class Home_LiveCard extends StatelessWidget {
  const Home_LiveCard({
    super.key, required this.homelivedatamodel, required this.onTap,

  });
final
Homelivedatamodel homelivedatamodel;
final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(

      child: Container(
        margin: const EdgeInsets.only(left: 10),
        padding: const EdgeInsets.all(10),
        width: 300,
        height: 180,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: AppColor.cardsC,
        ),
        child: Column(
          children: [
            LiveCard_countryLogo(
              countryImsge: homelivedatamodel.countryImsge!,
              countryName: homelivedatamodel.countryName!,
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              children: [
                LiveCard_TeamLogo(
                  image: homelivedatamodel.team_1_Image!,
                  name: homelivedatamodel.team_1_name!,
                ),
                const SizedBox(
                  width: 12,
                ),
                LiveCard_TeamGoal(
                  team_1_goal: homelivedatamodel.team_1_goal!,
                  team_2_goal: homelivedatamodel.team_2_goal!,
                ),
                 const SizedBox(
                  width: 12,
                ),
                LiveCard_TeamLogo(
                  image: homelivedatamodel.team_2_Image!,
                  name: homelivedatamodel.team_2_name!,
                ),
              ],
            ),
      
            Spacer(),
            Card_CardDeatailsButton(
              onTap: () {
                onTap();
              },
            )
          ],
        ),
      ),
    );
  }
}
