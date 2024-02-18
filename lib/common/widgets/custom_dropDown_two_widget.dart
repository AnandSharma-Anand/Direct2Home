import 'package:direct2home/common/appcolors.dart';
import 'package:flutter/material.dart';

class CustomDropDown2Widget<T> extends StatelessWidget {
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

  const CustomDropDown2Widget(
      {Key? key,
      required this.dataList,
      required this.item,
      required this.onChanged,
      this.textcolor,
      this.fontFamily,
      this.fontsize = 15.0,
      this.hinttext,
      this.padding,
      this.icon,
      this.hintStyle,
      this.lable,
      this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<T>(
      value: value,
      isExpanded: true,
      isDense: true,
      dropdownColor: AppColors.white,
      decoration: InputDecoration(
          hintText: hinttext,
          hintStyle: hintStyle,
          border: InputBorder.none,
          contentPadding: padding,
          label: lable),
      icon: icon,
      onChanged: onChanged,
      items: dataList
              ?.map<DropdownMenuItem<T>>(
                (e) => DropdownMenuItem<T>(
                  value: e,
                  child: Text(
                    item(e),
                    maxLines: 1,
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      fontSize: fontsize,
                      color: textcolor,
                      height: 1.0,
                      fontFamily: 'Poppins-Regular',
                    ),
                  ),
                ),
              )
              .toList() ??
          [],
    );
  }
}
