import 'package:flutter/widgets.dart';
import 'package:live_score/core/constent/custom_colors.dart';
import 'package:live_score/data/models/homeDetails/homeDetailsDataModel.dart';
import 'package:live_score/view/widgets/homeDetails/custom_logo.dart';
import 'package:live_score/view/widgets/homeDetails/custom_teamLogo.dart';

class HomeDetails_Card extends StatelessWidget {
  const HomeDetails_Card({
    super.key,
    required this.countryName,
    required this.team_1_name,
    required this.team_1_Image,
    required this.team_2_name,
    required this.team_2_Image,
    required this.team_1_goal,
    required this.team_2_goal,
    required this.countryImage, required this.onTap,
  });
final Function() onTap;
  final String countryName;
  final String countryImage;
  final String team_1_name;
  final String team_1_Image;
  final String team_2_name;
  final String team_2_Image;
  final String team_1_goal;
  final String team_2_goal;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child:      GestureDetector(
                        onTap: () {
                       onTap();
                        } ,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 13),
          height: 160,
          decoration: BoxDecoration(
            color: AppColor.cardsC,
            borderRadius: BorderRadius.circular(6),
          ),
          child: Column(
            children: [
              HomeDetails_Logo(text: countryName,image: countryImage,),
              const SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  HomeDetails_teamLogo(
                    image: team_1_Image,
                    text: team_1_name,
                  ),
                  const Spacer(),
                  Text(
                    team_1_goal,
                    style: TextStyle(
                        color: AppColor.width,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "-",
                    style: TextStyle(
                        color: AppColor.width,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    team_2_goal,
                    style: TextStyle(
                        color: AppColor.width,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                  const Spacer(),
                  HomeDetails_teamLogo(
                    image: team_2_Image,
                    text: team_2_name,
                  ),
                ],
              ),
        
            ],
          ),
        ),
      ),
    );
  }
}
