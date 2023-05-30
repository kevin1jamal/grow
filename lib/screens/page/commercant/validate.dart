import 'package:ejara_growth_dsa/my_theme.dart';
import 'package:ejara_growth_dsa/styles/text_style.dart';
import 'package:ejara_growth_dsa/ui_elements/custom_app_bar.dart';
import 'package:ejara_growth_dsa/ui_elements/custom_button.dart';
import 'package:flutter/material.dart';
class CommercantValidateDsaScreen extends StatefulWidget {
  const CommercantValidateDsaScreen({Key? key}) : super(key: key);

  @override
  State<CommercantValidateDsaScreen> createState() => _CommercantValidateDsaScreenState();
}

class _CommercantValidateDsaScreenState extends State<CommercantValidateDsaScreen> {
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
                'Validez la transaction\n en tapant #150*50#',
                style: AppTextStyle.titleH1(
                  color: MyTheme.appBarTitle,
                  fontWeight: FontWeight.w700,
                  size: 32,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.55,
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

