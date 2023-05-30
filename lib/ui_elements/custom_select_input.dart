import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:ui';
import 'package:ejara_growth_dsa/my_theme.dart';
import 'package:ejara_growth_dsa/styles/text_style.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

class CustomSelectField extends StatelessWidget {
  final String? placeholder;
  final String? label;
  final String? value;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final void Function()? onTap;
  final void Function(String?)? onChanged;
  final void Function(String val)? onSubmitted;
  final TextEditingController? controller;
  final bool? autofocus;
  final bool? isRequired;
  final Color? borderColor;
  final Color? fillColor;
  final Color? textFillColor;
  final Color? textLabelColor;
  final int? maxlenght;
  final bool? isBorder;
  final double? fieldSize;
  final double? raduis;
  final Color? backgroundColor;
  final bool? obscureText;
  final TextInputType? typeInput;
  final int? minlent;
  final String? errorText;
  final List<Map<String, String>>? items;
  final String? selectedValue;
  CustomSelectField(
      {
        this.value,
        this.errorText,
      this.obscureText = false,
      this.typeInput,
      this.placeholder,
      this.label,
      this.suffixIcon,
      this.prefixIcon,
      this.onTap,
      this.onChanged,
      this.onSubmitted,
      this.fillColor,
      this.autofocus = false,
      this.borderColor,
      this.textFillColor,
      this.textLabelColor,
      this.controller,
      this.isBorder = false,
      this.fieldSize,
      this.raduis = 6.0,
      this.backgroundColor,
      this.maxlenght,
      this.minlent,
      this.isRequired = false,
      this.selectedValue,
      this.items});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: 20,
          ),
          child: Row(children: [
            Text(
              label ?? '',
              style: AppTextStyle.fieldLabel(color: MyTheme.input_label),
            ),
            SizedBox(
              width: 5.0,
            ),
            isRequired == true
                ? Text(
                    '*',
                    style: AppTextStyle.fieldLabel(
                        color: MyTheme.input_label_required),
                  )
                : Container()
          ]),
        ),
        SizedBox(
          height: 5.0,
        ),
        Padding(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Center(
            child: DropdownButtonHideUnderline(
              child: DropdownButton2(
                isExpanded: true,
                hint: Row(
                  children: [
                    Expanded(
                      child: Text(
                        '',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: MyTheme.input_label,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                items: items
                    ?.map((item) => DropdownMenuItem<String>(
                          value: item['value'],
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: item['label'] != null ? 1 : 0,
                              ),
                              item['label'] != null ?Text(
                                item['label']??'',
                                style: AppTextStyle.subTitle(
                                  fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    color: MyTheme.input_label),
                                textAlign: TextAlign.left,
                                overflow: TextOverflow.ellipsis,
                              ) : Container(),
                              SizedBox(
                                height: item['label'] != null ? 1 : 0,
                              ),
                              Text(
                                item['value']??'',
                                style: AppTextStyle.titleH1(
                                  size: 13,
                                    color: MyTheme.input_label),
                                textAlign: TextAlign.left,
                                overflow: TextOverflow.ellipsis,
                              )
                            ],
                          ),
                        ))
                    ?.toList(),
                value: selectedValue,
                onChanged: onChanged,
                buttonStyleData: ButtonStyleData(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.only(left: 14, right: 14),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: isBorder == true ? MyTheme.input_border : Colors.transparent,
                    ),
                    color: MyTheme.white,
                  ),
                  elevation: 0,
                ),
                iconStyleData: IconStyleData(
                  icon: Icon(
                    Icons.arrow_drop_down,
                    size: 20,
                    color: MyTheme.input_fill,
                  ),
                  iconSize: 14,
                  iconEnabledColor: MyTheme.input_border,
                  iconDisabledColor: MyTheme.input_border,
                ),
                dropdownStyleData: DropdownStyleData(
                  maxHeight: 200,
                  width: MediaQuery.of(context).size.width*0.92,
                  padding: null,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: MyTheme.white,
                  ),
                  elevation: 2,
                  // offset: const Offset(-20, 0),
                  scrollbarTheme: ScrollbarThemeData(
                    radius: const Radius.circular(0),
                    thickness: MaterialStateProperty.all<double>(6),
                    thumbVisibility: MaterialStateProperty.all<bool>(true),
                  ),
                ),
                menuItemStyleData: const MenuItemStyleData(
                  height: 40,
                  padding: EdgeInsets.only(left: 14, right: 14),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
