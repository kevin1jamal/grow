import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:ui';
import 'package:ejara_growth_dsa/my_theme.dart';
import 'package:ejara_growth_dsa/styles/text_style.dart';

class CustomInputField extends StatelessWidget {
  final String? placeholder;
  final String? label;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final void Function()? onTap;
  final void Function(String val)? onChanged;
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
  CustomInputField(
      {this.errorText,
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
      this.raduis = 10.0,
      this.backgroundColor,
      this.maxlenght,
      this.minlent,
      this.isRequired = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: isBorder == true ? 20 : 20,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
        // SizedBox(
        //   height: isBorder == true ? 5.0 : 1.0,
        // ),
        Padding(
          padding: EdgeInsets.only(
            top: 0,
          ),
          child: Center(
            child: TextField(
              obscuringCharacter: '*',
              keyboardType: typeInput,
              obscureText: obscureText!,
              cursorColor: MyTheme.input_label,
              onTap: onTap,
              onChanged: onChanged,
              onSubmitted: onSubmitted,
              controller: controller,
              autofocus: autofocus!,
              style: AppTextStyle.fieldLabel(color: MyTheme.sub_title),
              textAlignVertical: TextAlignVertical.center,
              textAlign: TextAlign.left,
              maxLines: 1,
              decoration: InputDecoration(
                errorStyle: AppTextStyle.fieldLabel(
                    color: MyTheme.input_label_required),
                errorText: errorText,
                enabled: true,
                hintText: placeholder ?? '',
                hintStyle: AppTextStyle.fieldLabel(color: textFillColor),
                filled: true,
                border: InputBorder.none,
                fillColor: fillColor ?? MyTheme.input_fill,
                suffixIcon: suffixIcon,
                prefixIcon: prefixIcon,
                enabledBorder: isBorder!
                    ? OutlineInputBorder(
                        borderSide:
                            BorderSide(color: MyTheme.input_border, width: 1.0),
                        borderRadius: BorderRadius.circular(8.0),
                      )
                    : null,
                contentPadding: EdgeInsets.only(
                    top: fieldSize == null ? 10 : fieldSize!,
                    bottom: fieldSize == null ? 10 : fieldSize!,
                    left: 20,
                    right: 20),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
