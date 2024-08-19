import 'package:flutter/widgets.dart';
import 'package:live_score/core/constent/custom_colors.dart';

class H2H_teams_logos extends StatelessWidget {
  const H2H_teams_logos({
    super.key,
    required this.tema_1_image,
    required this.tema_2_image,
    required this.tema_1_name,
    required this.tema_2_name,
  });
  final String tema_1_image;
  final String tema_2_image;
  final String tema_1_name;
  final String tema_2_name;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              width: 25,
              height: 25,
              decoration: BoxDecoration(
                  image: DecorationImage(image: NetworkImage(tema_1_image)),
                  borderRadius: BorderRadius.circular(13),
                  color: AppColor.width),
            ),
            const SizedBox(
              width: 12,
            ),
            Text(
              tema_1_name,
              style: TextStyle(color: AppColor.width),
            ),
          ],
        ),
        Spacer(),
        Row(
          children: [
            Container(
              width: 25,
              height: 25,
              decoration: BoxDecoration(
                  image: DecorationImage(image: NetworkImage(tema_2_image)),
                  borderRadius: BorderRadius.circular(13),
                  color: AppColor.width),
            ),
            const SizedBox(
              width: 12,
            ),
            Text(
              tema_2_name,
              style: TextStyle(color: AppColor.width),
            ),
          ],
        )
      ],
    );
  }
}
