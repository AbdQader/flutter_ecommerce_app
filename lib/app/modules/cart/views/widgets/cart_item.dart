import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../../../utils/constants.dart';
import '../../../../data/models/product_model.dart';
import '../../controllers/cart_controller.dart';

class CartItem extends GetView<CartController> {
  final ProductModel product;
  const CartItem({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return Padding(
      padding: EdgeInsets.only(bottom: 20.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(25.r),
            child: Stack(
              children: [
                Container(
                  width: 105.w,
                  height: 125.h,
                  color: const Color(0xFFEDF1FA),
                ),
                Positioned(
                  left: 15.w,
                  bottom: -150.h,
                  child: Image.asset(
                    product.image!,
                    height: 250.h,
                  ),
                ),
              ],
            ),
          ),
          20.horizontalSpace,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              5.verticalSpace,
              Text(
                product.name!,
                style: theme.textTheme.headline4,
                overflow: TextOverflow.ellipsis,
              ),
              5.verticalSpace,
              Text('Size: ${product.size}', style: theme.textTheme.bodyText2?.copyWith(fontSize: 16.sp)),
              5.verticalSpace,
              Text('\$${product.price}', style: theme.textTheme.headline4),
              10.verticalSpace,
              GetBuilder<CartController>(
                id: 'ProductQuantity',
                builder: (_) => Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () => controller.onIncreasePressed(product.id!),
                      child: SvgPicture.asset(Constants.decreaseIcon),
                    ),
                    10.horizontalSpace,
                    Text('${product.quantity}', style: theme.textTheme.headline6),
                    10.horizontalSpace,
                    GestureDetector(
                      onTap: () => controller.onDecreasePressed(product.id!),
                      child: SvgPicture.asset(Constants.increaseIcon),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const Spacer(),
          InkWell(
            onTap: () => controller.onDeletePressed(product.id!),
            customBorder: const CircleBorder(),
            child: Container(
              padding: EdgeInsets.all(10.r),
              child: SvgPicture.asset(
                Constants.cancelIcon,
                width: 20.w,
                height: 20.h,
                color: theme.textTheme.bodyText2!.color,
              ),
            ),
          ),
        ],
      ),
    );
  }
}