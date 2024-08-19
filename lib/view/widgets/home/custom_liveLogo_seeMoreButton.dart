import 'package:flutter/material.dart';
import 'package:live_score/core/constent/custom_colors.dart';

class Home_LiveLogo_SeeMoreButton extends StatelessWidget {
  const Home_LiveLogo_SeeMoreButton({
    super.key, required this.text,
  });
final String  text;
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Row(
          children: [
            Text(
              text,
              style: TextStyle(
                  fontSize: 18,
                  color: AppColor.width,
                  fontWeight: FontWeight.bold),
            ),
            const Spacer(),
       
          ],
        ),
      ),
    );
  }
}
