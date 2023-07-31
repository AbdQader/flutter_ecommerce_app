import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../../../utils/constants.dart';

class NotificationItem extends StatelessWidget {
  const NotificationItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5.h),
      margin: EdgeInsets.only(bottom: 15.h),
      decoration: BoxDecoration(
        color: theme.primaryColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: ListTile(
        title: Text(
          'New Notification received\nyour cart waiting for checkout',
          style: theme.textTheme.headline6?.copyWith(
            fontWeight: FontWeight.normal,
          ),
        ),
        subtitle: Padding(
          padding: EdgeInsets.only(top: 5.h),
          child: Text(
            '10/06/2022 AT 05:30 PM',
            style: theme.textTheme.bodyText2?.copyWith(
              fontSize: 12.sp,
            ),
          ),
        ),
        leading: Container(
          width: 60.w,
          height: 60.h,
          decoration: BoxDecoration(
            color: theme.primaryColor,
            borderRadius: BorderRadius.circular(12.r),
          ),
          child: Center(
            child: SvgPicture.asset(
              Constants.notificationsIcon,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}