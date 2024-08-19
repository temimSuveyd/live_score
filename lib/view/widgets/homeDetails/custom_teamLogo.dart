import 'package:flutter/widgets.dart';
import 'package:live_score/core/constent/custom_colors.dart';

class HomeDetails_teamLogo extends StatelessWidget {
  const HomeDetails_teamLogo({
    super.key,
    required this.image, required this.text,
  });
  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      child: Column(
        children: [
          Container(
            width: 32,
            height: 32,
    
            decoration: BoxDecoration(
                image: DecorationImage(image: NetworkImage(image)),
                borderRadius: BorderRadius.circular(16),
                color: AppColor.width),
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(color: AppColor.width),
          )
        ],
      ),
    );
  }
}
