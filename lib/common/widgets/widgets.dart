import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../appcolors.dart';

class CustomTextButtonWidget extends StatelessWidget {
  final VoidCallback onPressed;
  final String? title;
  final double height;
  final double iconheight;
  final double iconweight;
  final double iconcontainerweight;
  final double iconcontainerheight;
  final double? buttonWidth, textFontSize;
  final Widget? child;
  final Color buttonColor;
  final Color textColor;
  final Color iconColor;
  final bool addBorder;
  final Icons? image;
  final String? icon;
  final Border? border;
  final String? fontfamily;
  final FontWeight? fontWeight;
  final TextDecoration? decoration;
  final TextAlign? textAlign;
  final BorderRadiusGeometry? borderRadius;
  final LinearGradient? linearGradient;

  const CustomTextButtonWidget({
    Key? key,
    required this.onPressed,
    this.title,
    this.border,
    this.fontWeight,
    this.textAlign,
    this.image,
    this.iconheight = 15,
    this.height = 48,
    this.child,
    this.buttonColor = AppColors.kPrimaryColor,
    this.textColor = AppColors.kPrimaryColor,
    this.buttonWidth,
    this.textFontSize,
    this.fontfamily,
    this.addBorder = false,
    this.iconColor = AppColors.kPrimaryColor,
    this.linearGradient,
    this.decoration,
    this.icon,
    this.borderRadius,
    this.iconweight = 20,
    this.iconcontainerweight = 20,
    this.iconcontainerheight = 20,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      onTap: onPressed,
      child: Stack(
        alignment: Alignment.centerRight,
        children: [
          Container(
            height: height,
            width: buttonWidth == null ? Get.width : buttonWidth,
            decoration: BoxDecoration(
                color: buttonColor,
                gradient: linearGradient,
                border: border,
                borderRadius: borderRadius),
            child: Center(
              child: Text(
                title.toString(),
                style: TextStyle(
                    color: textColor,
                    fontSize: textFontSize,
                    fontFamily: fontfamily,
                    fontWeight: fontWeight,
                    decoration: decoration),
              ),
            ),
          ),
          Container(
            height: iconcontainerheight,
            width: iconcontainerweight,
            decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(50),
                border: Border.all(color: AppColors.button_color, width: 2)),
            child: Center(
              child: Image.asset(
                icon.toString(),
                height: iconheight,
                width: iconweight,
                color: AppColors.button_color,
              ),
            ),
          )
        ],
      ),
    );
  }
}
