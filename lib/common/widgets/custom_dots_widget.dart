import 'package:direct2home/common/appcolors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomDotsWidget extends StatelessWidget {
  final int currentPosition;
  final int totalDots;

  const CustomDotsWidget({
    Key? key,
    required this.currentPosition,
    required this.totalDots,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        totalDots,
        (i) {
          return currentPosition == i
              ? Padding(
                  padding: const EdgeInsets.only(bottom: 0, left: 0, right: 5),
                  child: Container(
                    width: 7,
                    height: 7,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.header_color,
                    ),
                  ),
                )
              : Padding(
                  padding: const EdgeInsets.only(left: 0, right: 5, bottom: 0),
                  child: Container(
                    width: 7,
                    height: 7,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.lightgray.withOpacity(0.5),
                    ),
                  ),
                );
        },
      ),
    );
  }
}
