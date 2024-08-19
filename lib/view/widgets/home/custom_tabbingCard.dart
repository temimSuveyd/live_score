
import 'package:flutter/material.dart';
import 'package:live_score/core/constent/custom_colors.dart';

class Tabbing_Card extends StatelessWidget {
  const Tabbing_Card({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
        children: [
        
        Text("Upcoming",style: TextStyle(color: AppColor.width),),
      const  SizedBox(height: 5,),
        Container(width: 100,height: 2,color: AppColor.primary,),
        
        
        
        
        
        
        
        
        
        
        ],
        
        ),
      );
  }
}
