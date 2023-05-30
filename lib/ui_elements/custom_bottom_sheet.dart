import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:ejara_growth_dsa/my_theme.dart';
import 'package:ejara_growth_dsa/styles/text_style.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 47.0,
      decoration: BoxDecoration(
        color: MyTheme.bg_btn_blue,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 20,
            ),
            child:
                Text('EJARA', style: AppTextStyle.ejara(color: MyTheme.white)),
          ),
          Padding(
            padding: EdgeInsets.only(
              right: 20,
            ),
            child: Text('DSA App',
                style: AppTextStyle.appTiitle(color: MyTheme.white)),
          )
        ],
      ),
    );
  }
}
