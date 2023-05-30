import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:ejara_growth_dsa/my_theme.dart';
import 'package:ejara_growth_dsa/styles/text_style.dart';

class TransactionItem extends StatelessWidget {
  final String? transaction;
  final String? transactionDate;
  final double? transactionAmount;
  TransactionItem({
    this.transaction,
    this.transactionDate,
    this.transactionAmount,
});
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(
          bottom: 15,
        ),
        child: Row(
          // crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  transaction??'',
                  style: AppTextStyle.titleH1(
                      size:12,
                      color: MyTheme.bg_gray),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 5,),
                Text(
                  transactionDate??'',
                  style: AppTextStyle.subTitle(
                      fontSize:10,
                      color: MyTheme.bg_gray),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
            Text(
              '${transactionAmount!.toStringAsFixed(2)??''}f',
              style: AppTextStyle.titleH1(
                  size:12,
                  color: MyTheme.bg_gray),
              textAlign: TextAlign.right,
            ),
          ],
        ));
  }
}