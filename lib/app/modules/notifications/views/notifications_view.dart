import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../../components/screen_title.dart';
import '../controllers/notifications_controller.dart';
import 'widgets/notification_item.dart';

class NotificationsView extends GetView<NotificationsController> {
  const NotificationsView({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: ListView(
          children: [
            30.verticalSpace,
            const ScreenTitle(
              title: 'Notifications',
              dividerEndIndent: 150,
            ),
            10.verticalSpace,
            ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) => const NotificationItem()
                .animate().fade().slideY(
                  duration: const Duration(milliseconds: 300),
                  begin: 1,
                  curve: Curves.easeInSine,
                ),
              shrinkWrap: true,
              primary: false,
            ),
          ],
        ),
      ),
    );
  }
}
