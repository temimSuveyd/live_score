import 'package:date_picker_timetable/date_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:live_score/controller/homeControler.dart';
import 'package:live_score/core/constent/custom_colors.dart';

class Home_DatePicerTimeLine extends GetView<HomeControlerImp> {
  const Home_DatePicerTimeLine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child:  DatePicker(
        DateTime.now(),
        initialSelectedDate: DateTime.now(),
        selectionColor: AppColor.primary,
        selectedTextColor: Colors.white,
        dateTextStyle: TextStyle(color: AppColor.width),
        dayTextStyle: TextStyle(color: AppColor.width),
        monthTextStyle: TextStyle(color: AppColor.width),
        onDateChange: (date) {
 controller.changeDate(date);
        },
      ),
      );
 
  }
}
