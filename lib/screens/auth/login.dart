import 'package:ejara_growth_dsa/my_theme.dart';
import 'package:ejara_growth_dsa/styles/text_style.dart';
import 'package:ejara_growth_dsa/ui_elements/custom_app_bar.dart';
import 'package:ejara_growth_dsa/ui_elements/custom_bottom_sheet.dart';
import 'package:ejara_growth_dsa/ui_elements/custom_button.dart';
import 'package:ejara_growth_dsa/ui_elements/custom_input_field.dart';
import 'package:flutter/material.dart';
import 'package:adaptive_dialog/adaptive_dialog.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // appBar: CustomAppBar.authAppBar(title: 'Connexion'),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            Center(
                child: Text(
                  'C’est parti!',
                  style: AppTextStyle.titleH1(
                      color: MyTheme.bg_gray),
                  textAlign: TextAlign.center,
                )),
            SizedBox(
              height: 5,
            ),
            Center(
                child: Text(
                  'Accédez à l’application agent\n en deux clics',
                  style: AppTextStyle.subTitle(
                      color: MyTheme.sub_title),
                  textAlign: TextAlign.center,
                )),
            SizedBox(
              height: 80,
            ),
            Padding(
              padding: EdgeInsets.only(
                right: 20,
                left: 20,
              ),
          child: CustomInputField(
            //label: 'Nom d’utilisateur',
              placeholder: 'Nom d’utilisateur',
              //isRequired: true,
              fillColor: MyTheme.white,
              isBorder: true),),
      Padding(
        padding: EdgeInsets.only(
          top:20,
          right: 20,
          left: 20,
        ),
        child:CustomInputField(
                //label: 'Mot de passe',
                placeholder: 'Mot de passe',
                //isRequired: true,
                obscureText: true,
                fillColor: MyTheme.white,
                isBorder: true),),
            // Padding(
            //   padding: EdgeInsets.only(
            //     top: 10,
            //     left: 20,
            //   ),
            //   child: GestureDetector(
            //     onTap: (){},
            //     child: Text(
            //       'Mot de passe oublié?',
            //       style: AppTextStyle.subTitle(
            //           fontSize: 12,
            //           color: MyTheme.sub_title
            //       ),
            //       textAlign: TextAlign.left,
            //     ),
            //   )
            // ),
            SizedBox(
              height: MediaQuery.of(context).size.height*0.35,
            ),
            CustomButon(
              label: 'Connexion',
              raduis: true,
                bg_color: MyTheme.bg_gray,
              onTap: () {
                Navigator.pushNamed(context, '/auth/pin-validate');
              },
            )
          ],
        ),
      ),
      //bottomSheet: CustomBottomSheet(),
    );
  }
}
