import 'package:flutter/material.dart';
import 'package:live_score/core/constent/custom_colors.dart';
import 'package:live_score/data/models/homeDetails/standingsModel.dart';

class Standing_Card extends StatelessWidget {
  const Standing_Card({
    super.key, required this.standingsmodel, required this.color,
  }); final
Standingsmodel standingsmodel ;
final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
padding:const EdgeInsets.only(left: 5),
      decoration:  BoxDecoration(border: Border(left: BorderSide(color: color,width: 2))),
      height: 30,
      child: Row(
        children: [
          Text(
            standingsmodel.rank!,
            style: TextStyle(
                color: AppColor.width, fontWeight: FontWeight.bold),
          ),
        const  SizedBox(
            width: 12,
          ),
          SizedBox(
              width: 80,
              child: Text(
                standingsmodel.name!,
                style: TextStyle(
                    color: AppColor.width, fontWeight: FontWeight.bold),
              )),
              Spacer(),
          SizedBox(
              width: 35,
              child: Text(
                standingsmodel.played!,
                style: TextStyle(
                    color: AppColor.width, fontWeight: FontWeight.bold),
              )),
    
              SizedBox(
      
    width: 35,
      child: Text(standingsmodel.win!,style: TextStyle(color: AppColor.width,fontWeight: FontWeight.bold),)),
           SizedBox(
      
    width: 35,
      child: Text(standingsmodel.draw!,style: TextStyle(color: AppColor.width,fontWeight: FontWeight.bold),)),                   SizedBox(
      
    width: 35,
      child: Text(standingsmodel.goals!,style: TextStyle(color: AppColor.width,fontWeight: FontWeight.bold),)),                   SizedBox(
      
    width: 35,
      child: Text(standingsmodel.points!,style: TextStyle(color: AppColor.width,fontWeight: FontWeight.bold),)),
        ],
      ),
    );
  }
}
