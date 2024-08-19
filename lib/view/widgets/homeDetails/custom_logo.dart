import 'package:flutter/widgets.dart';
import 'package:live_score/core/constent/custom_colors.dart';

class HomeDetails_Logo extends StatelessWidget {
  const HomeDetails_Logo({
    super.key,
    required this.text, required this.image,
  });
  final String text;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 25,
          height: 25,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13),
              color: AppColor.width,
              image: DecorationImage(image: NetworkImage(image))),
        ),
        const SizedBox(width: 12),
        Text(
          text,
          style: TextStyle(color: AppColor.greay),
        )
      ],
    );
  }
}
