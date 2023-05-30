import 'package:ejara_growth_dsa/my_theme.dart';
import 'package:ejara_growth_dsa/styles/text_style.dart';
import 'package:ejara_growth_dsa/ui_elements/custom_app_bar.dart';
import 'package:ejara_growth_dsa/ui_elements/custom_button.dart';
import 'package:ejara_growth_dsa/ui_elements/custom_input_field.dart';
import 'package:ejara_growth_dsa/ui_elements/custom_select_input.dart';
import 'package:flutter/material.dart';

class DepotScreen extends StatefulWidget {
  const DepotScreen({Key? key}) : super(key: key);

  @override
  State<DepotScreen> createState() => _DepotScreenState();
}

class _DepotScreenState extends State<DepotScreen> {
  String _value = '+237';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.authAppBar(
          onTap: (){
            Navigator.pop(context);
          },
          leading: true,
        title: 'Dépose de l’argent sur\n Ejara'
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Text(
            //   'Dépose de l’argent sur\n Ejara',
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
              height: 96,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                    top: BorderSide(
                        width: 0.1,
                        color: MyTheme.sub_title
                    ),
                    bottom: BorderSide(
                        width: 0.1,
                        color: MyTheme.sub_title
                    ),

                )
              ),
              child: Padding(
                padding: EdgeInsets.only(
                  top: 10,
                  bottom: 10
                ),
                child: CustomInputField(
                    label: 'Montant du dépôt ',
                    placeholder: 'CFA 10.000',
                    typeInput: TextInputType.number,
                    fillColor: MyTheme.white,
                    // isBorder: false
                )
              ),
            ),

            SizedBox(
              height: 1.0,
            ),

            Container(
              height: 96,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    top: BorderSide(
                        width: 0.1,
                        color: MyTheme.sub_title
                    ),
                    bottom: BorderSide(
                        width: 0.1,
                        color: MyTheme.sub_title
                    ),

                  )
              ),
              child: Padding(
                  padding: EdgeInsets.only(
                      top: 10,
                      bottom: 10
                  ),
                  child: CustomSelectField(
                    isBorder: false,
                    label: 'Numéro de téléphone ',
                    // isRequired: true,
                    selectedValue: _value,
                    onChanged: (value) {
                      setState(() {
                        _value = value as String;
                      });
                    },
                    items: [
                      {'label' : '', 'value': '+237'},{'label' : 'MTN', 'value': '+223 0788988877'},{'label' : 'ORANGE', 'value': '+223 0788998877'}],
                  ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.45,
            ),
            CustomButon(
              label: 'Continuer',
              raduis: true,
              bg_color: MyTheme.bg_gray,
              onTap: () {
                Navigator.pushNamed(context, '/transaction/depot/statut');
              },
            ),
          ],
        ),
      ),
    );
  }
}
