import 'package:flutter/widgets.dart';
import 'package:live_score/core/constent/custom_colors.dart';

class Stats_logo extends StatelessWidget {
  const Stats_logo({
    super.key,
    required this.image,
    required this.text,
  });
  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            width: 32,
            height: 32,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: DecorationImage(image: NetworkImage(image)))),
        const SizedBox(
          width: 12,
        ),
        Text(
          text,
          style: TextStyle(color: AppColor.width),
        )
      ],
    );
  }
}
