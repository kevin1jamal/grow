import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:ejara_growth_dsa/my_theme.dart';
import 'package:ejara_growth_dsa/styles/text_style.dart';

class CustomButon extends StatelessWidget {
  final String? label;
  final IconData? label_icon;
  void Function()? onTap;
  final bool? raduis;
  final Color? bg_color;
  final Color? txt_color;
  final double? height;
  final double? width;
  final double? v_raduis;
  final bool? is_paginate;
  CustomButon({this.is_paginate = true,this.v_raduis,this.width,this.height,this.label, this.label_icon, this.onTap, this.raduis = false,this.bg_color ,this.txt_color });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.only(
          left: is_paginate == true  ? 20 : 0.0,
          right: is_paginate == true  ? 20 : 0.0,
          bottom: is_paginate == true  ? 20 : 0.0,
        ),
        child: Center(
          child: Container(
              height: height??56.0,
              width: width??358.0,
              decoration: BoxDecoration(
                  color: bg_color??MyTheme.bg_btn_blue,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(raduis == true ? (v_raduis??16) : 0),
                    topRight: Radius.circular(raduis == true ? (v_raduis??16) : 0),
                    bottomLeft: Radius.circular(raduis == true ? (v_raduis??16) : 0),
                    bottomRight: Radius.circular(raduis == true ? (v_raduis??16) : 0),
                  )),
              child: Padding(
                padding: EdgeInsets.only(
                  left: 0.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      label!,
                      style: AppTextStyle.customButton(color: txt_color??MyTheme.white),
                    ),
                  ],
                ),
              )),
        )
      ),
    );
  }
}
