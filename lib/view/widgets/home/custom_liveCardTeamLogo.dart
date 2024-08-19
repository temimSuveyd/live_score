import 'package:flutter/material.dart';
import 'package:live_score/core/constent/custom_colors.dart';

class LiveCard_TeamLogo extends StatelessWidget {
  const LiveCard_TeamLogo({
    super.key, required this.image, required this.name,
  });
final String image;
final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 100 ,
      padding: const EdgeInsets.all(5),
      child: Column(children: [
      
      Container(width: 32,height: 32,decoration:  BoxDecoration(image: DecorationImage(image: NetworkImage(image),fit: BoxFit.cover),),),
    const  SizedBox(height: 4,),
      Text(name,textAlign: TextAlign.center, style: TextStyle(color: AppColor.width,fontSize:12 ,fontWeight: FontWeight.w300),)
      
      ],),
    );
  }
}
