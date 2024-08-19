import 'package:flutter/material.dart';
import 'package:live_score/core/constent/custom_colors.dart';

class Card_CardDeatailsButton extends StatelessWidget {
  const Card_CardDeatailsButton({
    super.key,
    required this.onTap,
  });
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          onTap();
        },
        child: Container(
          height: 30,
          decoration: BoxDecoration(
              color: AppColor.primary, borderRadius: BorderRadius.circular(6)),
          child: Center(
            child: Text(
              "Details",
              style: TextStyle(color: AppColor.width),
            ),
          ),
        ));
  }
}
