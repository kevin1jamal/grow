import 'package:ejara_growth_dsa/my_theme.dart';
import 'package:ejara_growth_dsa/styles/text_style.dart';
import 'package:ejara_growth_dsa/ui_elements/custom_app_bar.dart';
import 'package:ejara_growth_dsa/ui_elements/custom_button.dart';
import 'package:flutter/material.dart';

class RetraitValidateScreen extends StatefulWidget {
  const RetraitValidateScreen({Key? key}) : super(key: key);

  @override
  State<RetraitValidateScreen> createState() => _RetraitValidateScreenState();
}

class _RetraitValidateScreenState extends State<RetraitValidateScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.authAppBar(
        //title: 'Dépose de l’argent sur\n Ejara',
        //   leading: true
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [

            Padding(padding: EdgeInsets.only(
              left: 20
            ),
            child: Icon(
              Icons.check_circle,
              size: 50,
              color: MyTheme.green,
            ),
            ),
            Padding(padding: EdgeInsets.only(
              top: 20,
                left: 30
            ),
              child: Text(
                'Votre retrait vers\n +223 0788998877 \nest confirmé ',
                style: AppTextStyle.titleH1(
                  color: MyTheme.appBarTitle,
                  fontWeight: FontWeight.w700,
                  size: 32,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.5,
            ),
            CustomButon(
              label: 'Retourner à l’accueil',
              raduis: true,
              bg_color: MyTheme.bg_gray,
              onTap: () {
                Navigator.pushNamed(context, '/home');
              },
            )
          ],
        ),
      ),
    );
  }
}
