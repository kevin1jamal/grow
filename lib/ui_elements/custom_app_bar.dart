import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:ejara_growth_dsa/my_theme.dart';
import 'package:ejara_growth_dsa/styles/text_style.dart';

class CustomAppBar {
  static AppBar authAppBar({@required String? title, bool isLeading = false, Color?backgroundColor, bool?leading=false, void Function()? onTap}) {
    return AppBar(
      leading: leading == true ? GestureDetector(
        onTap: onTap,
        child: Icon(
          Icons.arrow_back_ios_new_sharp,
          size: 20,
          color: MyTheme.medium_grey,
        ),
      ): Container(),
      title: Text(
        title ?? '',
        style: AppTextStyle.titleH1(
          color: MyTheme.appBarTitle,
          fontWeight: FontWeight.w700,
          size: 19,
        ),
        textAlign: TextAlign.center,
      ),
      centerTitle: true,
      elevation: 0,
      backgroundColor: backgroundColor??Colors.transparent,
    );
  }

  static AppBar seetingAppBar({bool? isActions = true,String? title, bool isLeading = false, Color?backgroundColor, bool?leading=false, void Function()? onTap}) {
    return AppBar(
      leading: leading == true ? GestureDetector(
        onTap:onTap,
        child: Icon(
          Icons.cancel_outlined,
          size: 20,
          color: MyTheme.sub_title,
        ),
      ) : Container(),
      actions: [
        isActions == true ? Padding(
          padding: EdgeInsets.only(
          right: 20
        ),
        child: GestureDetector(
          onTap:onTap,
          child: Icon(
            Icons.cancel_outlined,
            size: 20,
            color: MyTheme.sub_title,
          ),
        ),
        ) : Container()
      ],
      title: Text(
        title ?? '',
        style: AppTextStyle.titleH1(
          color: MyTheme.bg_gray,
          fontWeight: FontWeight.w800,
          size: 20,
        ),
        textAlign: TextAlign.left,
      ),
      centerTitle: false,
      elevation: 0,
      backgroundColor: backgroundColor??Colors.transparent,
    );
  }
}
