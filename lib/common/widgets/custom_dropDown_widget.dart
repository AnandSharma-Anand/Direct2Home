import 'package:direct2home/common/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomDropDownWidget<T> extends StatelessWidget {
  final ValueChanged<T?>? onChanged;
  final List<T>? dataList;
  final double? fontsize;
  final Color? textcolor;
  final String? fontFamily;
  final T? value;
  final String? hinttext;
  final Widget? icon;
  final TextStyle? hintStyle;
  final Widget? lable;
  final EdgeInsetsGeometry? padding;
  final String Function(T data) item;

  const CustomDropDownWidget(
      {Key? key,
      required this.dataList,
      required this.item,
      required this.onChanged,
      this.textcolor,
      this.fontFamily,
      this.fontsize,
      this.hinttext,
      this.padding,
      this.icon,
      this.hintStyle,
      this.lable,
      this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //decoration: Utils.commonDecoration,
      child: Padding(
        padding: EdgeInsets.all(5.0),
        child: DropdownButton<T>(
          isExpanded: true,
          isDense: true,
          dropdownColor: AppColors.white,
          hint: Text(
            hinttext.toString(),
            style: hintStyle,
          ),
          underline: Container(),
          icon: icon,
          onChanged: onChanged,
          items: dataList
                  ?.map<DropdownMenuItem<T>>(
                    (e) => DropdownMenuItem<T>(
                      value: e,
                      child: Text(
                        item(e),
                        softWrap: true,
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          fontSize: Get.height / 65,
                          color: AppColors.ligt_blck,
                          height: 1.0,
                          fontFamily: 'Poppins-Regular',
                        ),
                      ),
                    ),
                  )
                  .toList() ??
              [],
        ),
      ),
    );
  }
}
