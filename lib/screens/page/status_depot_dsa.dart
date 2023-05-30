import 'package:ejara_growth_dsa/my_theme.dart';
import 'package:ejara_growth_dsa/styles/text_style.dart';
import 'package:ejara_growth_dsa/ui_elements/custom_app_bar.dart';
import 'package:ejara_growth_dsa/ui_elements/custom_bottom_sheet.dart';
import 'package:ejara_growth_dsa/ui_elements/custom_button.dart';
import 'package:ejara_growth_dsa/ui_elements/custom_input_field.dart';
import 'package:ejara_growth_dsa/ui_elements/custom_select_input.dart';
import 'package:flutter/material.dart';

class StatutDsaScreen extends StatefulWidget {
  const StatutDsaScreen({super.key});

  @override
  State<StatutDsaScreen> createState() => _StatutDsaScreenState();
}

class _StatutDsaScreenState extends State<StatutDsaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.bg_green,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            Center(
              child: Icon(
                Icons.check_circle,
                color: MyTheme.txt_success,
                size: 87.5,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
                child: Text(
              'Transaction réussie',
              style: AppTextStyle.appTiitle(
                  color: MyTheme.txt_success, fontSize: 48),
              textAlign: TextAlign.center,
            )),
            SizedBox(
              height: 40,
            ),
            Center(
                child: Text(
              'Validez la transaction en tapant #150*50#',
              style: AppTextStyle.appTiitle(color: MyTheme.black, fontSize: 30),
              textAlign: TextAlign.center,
            )),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.37,
            ),
            CustomButon(
              label: 'Retourner à l’accueil',
              raduis: true,
              onTap: () {
                Navigator.pushNamed(context, '/transaction/depot-dsa');
              },
            )
          ],
        ),
      ),
      bottomSheet: CustomBottomSheet(),
    );
  }
}
