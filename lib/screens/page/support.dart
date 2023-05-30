import 'package:ejara_growth_dsa/my_theme.dart';
import 'package:ejara_growth_dsa/styles/text_style.dart';
import 'package:ejara_growth_dsa/ui_elements/custom_app_bar.dart';
import 'package:ejara_growth_dsa/ui_elements/custom_bottom_sheet.dart';
import 'package:ejara_growth_dsa/ui_elements/custom_button.dart';
import 'package:ejara_growth_dsa/ui_elements/custom_input_field.dart';
import 'package:flutter/material.dart';
import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:flutter/foundation.dart';

class SupportScreen extends StatefulWidget {
  const SupportScreen({Key? key}) : super(key: key);

  @override
  State<SupportScreen> createState() => _SupportScreenState();
}

class _SupportScreenState extends State<SupportScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: CustomAppBar.authAppBar(title: 'Contactez le support',backgroundColor: Colors.transparent),
      appBar: CustomAppBar.authAppBar(
          onTap: (){
            Navigator.pop(context);
          },
          title: 'Contactez le support',
          leading: true
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Text(
            //   'Contactez le support',
            //   style: AppTextStyle.titleH1(
            //     color: MyTheme.appBarTitle,
            //     fontWeight: FontWeight.w700,
            //     size: 19,
            //   ),
            //   textAlign: TextAlign.center,
            // ),
            SizedBox(
              height: 70,
            ),
            Container(
              height: 100,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Padding(
                padding: EdgeInsets.only(
                  top: 16,
                  bottom: 16
                ),
                child: CustomInputField(
                    label: 'Description',
                    placeholder: 'Décrire votre problème',
                    fillColor: MyTheme.white,
                    isBorder: false),
              )

            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.5,
            ),
            CustomButon(
              label: 'Contacter',
              raduis: true,
              bg_color: MyTheme.bg_gray,
              onTap: () {
                Navigator.pushNamed(context, '/signin');
              },
            )
          ],
        ),
      ),
      //bottomSheet: CustomBottomSheet(),
    );
  }
}
