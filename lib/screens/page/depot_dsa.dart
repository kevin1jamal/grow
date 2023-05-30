import 'package:ejara_growth_dsa/my_theme.dart';
import 'package:ejara_growth_dsa/styles/text_style.dart';
import 'package:ejara_growth_dsa/ui_elements/custom_app_bar.dart';
import 'package:ejara_growth_dsa/ui_elements/custom_bottom_sheet.dart';
import 'package:ejara_growth_dsa/ui_elements/custom_button.dart';
import 'package:ejara_growth_dsa/ui_elements/custom_input_field.dart';
import 'package:ejara_growth_dsa/ui_elements/custom_select_input.dart';
import 'package:flutter/material.dart';

class DepotDsaScreen extends StatefulWidget {
  const DepotDsaScreen({super.key});

  @override
  State<DepotDsaScreen> createState() => _DepotDsaScreenState();
}

class _DepotDsaScreenState extends State<DepotDsaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.authAppBar(title: 'Dépôt DSA'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            CustomInputField(
                label: 'Nom d’utilisateur épargnant',
                placeholder: 'Nom d’utilisateur épargnant',
                isRequired: true,
                fillColor: MyTheme.white,
                isBorder: true),
            SizedBox(
              height: 10.0,
            ),
            // CustomSelectField(
            //   label: 'Option épargne',
            //   isRequired: true,
            //   selectedValue: 'OTA Tchad 5%',
            //   onChanged: (value) {
            //     // setState(() {
            //     //   selectedValue = value as String;
            //     // });
            //   },
            //   items: ['OTA Tchad 5%'],
            // ),
            SizedBox(
              height: 10.0,
            ),
            // CustomSelectField(
            //   label: 'Opérateur DSA',
            //   isRequired: true,
            //   selectedValue: 'Orange',
            //   onChanged: (value) {
            //     // setState(() {
            //     //   selectedValue = value as String;
            //     // });
            //   },
            //   items: ['Orange', 'MTN'],
            // ),
            SizedBox(
              height: 10.0,
            ),
            CustomInputField(
                label: 'Montant d’épargne',
                placeholder: 'CFA',
                isRequired: true,
                fillColor: MyTheme.white,
                isBorder: true),
            SizedBox(
              height: 10.0,
            ),
            CustomInputField(
                label: 'Numéro de téléphone DSA',
                placeholder: '+237',
                isRequired: true,
                fillColor: MyTheme.white,
                isBorder: true),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.27,
            ),
            CustomButon(
              label: 'Confirmer la transaction',
              raduis: true,
              onTap: () {
                Navigator.pushNamed(context, '/transaction/statut');
              },
            )
          ],
        ),
      ),
      bottomSheet: CustomBottomSheet(),
    );
  }
}
