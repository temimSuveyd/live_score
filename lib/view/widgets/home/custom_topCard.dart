import 'package:flutter/material.dart';
import 'package:live_score/core/constent/custom_colors.dart';
import 'package:live_score/data/models/home/fixtureModel.dart';
import 'package:live_score/view/widgets/home/custom_TopCardDateText.dart';
import 'package:live_score/view/widgets/home/custom_TopCardTeamLogog.dart';
import 'package:live_score/view/widgets/home/custom_topCardTeamPoints.dart';

class All_F_Card extends StatelessWidget {
  const All_F_Card({
    super.key, required this.all_f_modle,
  });
final All_F_model all_f_modle;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      height: 80,
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
          color: AppColor.cardsC, borderRadius: BorderRadius.circular(6)),
      child:  Row(
        children: [
          TopCard_DeteText(
date: all_f_modle.data! ,
short:all_f_modle.short! ,

          ),
      const    SizedBox(
            width: 15,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TopCard_TeamLogo(
team_image:all_f_modle.team_1_Image! ,
       team_name:all_f_modle.team_1_name!  ,
              ),
            const  SizedBox(
                height: 8,
              ),
                     TopCard_TeamLogo(
team_image:all_f_modle.team_2_Image! ,
       team_name:all_f_modle.team_2_name!  ,
              ),
            ],
          ),
       const   Spacer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TopCard_TeamsPoints(
                team_goole: all_f_modle.team_1_goal!,
              ),
            const  SizedBox(
                height: 8,
              ),
              TopCard_TeamsPoints(
                team_goole: all_f_modle.team_2_goal!,
              ),
            ],
          )
        ],
      ),
    );
  }
}
