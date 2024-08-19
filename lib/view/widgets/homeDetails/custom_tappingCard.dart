import 'package:flutter/material.dart';
import 'package:live_score/core/constent/custom_colors.dart';

class HomeDetailsTabbing_Card extends StatelessWidget {
  const HomeDetailsTabbing_Card({
    super.key,
    required this.color,
    required this.text,
    required this.onTap,
  });
  final Color color;
  final String text;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: GestureDetector(
          onTap: () {
            onTap();
          },
          child: Container(
            width: 100,
            decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: color,width: 1))),
                child: Center(child: Text(text,style: TextStyle(color: AppColor.width),)),
          )),
    );
  }
}
