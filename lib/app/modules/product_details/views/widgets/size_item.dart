import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SizeItem extends StatelessWidget {
  final void Function()? onPressed;
  final String label;
  final bool selected;
  const SizeItem({
    Key? key,
    required this.onPressed,
    required this.label,
    this.selected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 30.w,
        height: 30.h,
        decoration: BoxDecoration(
          color: selected ? theme.primaryColor : theme.backgroundColor,
          borderRadius: BorderRadius.circular(12.r),
          boxShadow: !selected ? null : [
            BoxShadow(
              color: const Color(0xFF0FDA89).withOpacity(0.3),
              blurRadius: 4,
              spreadRadius: 0,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Center(
          child: Text(
            label,
            style: theme.textTheme.headline6?.copyWith(
              fontSize: 12.sp,
              fontWeight: FontWeight.bold,
              color: selected ? Colors.white : null
            ),
          ),
        ),
      ),
    );
  }
}