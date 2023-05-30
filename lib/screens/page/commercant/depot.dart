import 'package:ejara_growth_dsa/my_theme.dart';
import 'package:ejara_growth_dsa/styles/text_style.dart';
import 'package:ejara_growth_dsa/ui_elements/custom_app_bar.dart';
import 'package:ejara_growth_dsa/ui_elements/custom_button.dart';
import 'package:ejara_growth_dsa/ui_elements/custom_input_field.dart';
import 'package:ejara_growth_dsa/ui_elements/custom_select_input.dart';
import 'package:flutter/material.dart';

class CommercantDepotDsa extends StatefulWidget {
  const CommercantDepotDsa({Key? key}) : super(key: key);

  @override
  State<CommercantDepotDsa> createState() => _CommercantDepotDsaState();
}

class _CommercantDepotDsaState extends State<CommercantDepotDsa> {
  String _value = 'Orange';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.authAppBar(
          onTap: (){
            Navigator.pop(context);
          },
          leading: true,
        title: 'Entrer les informations \ndu commerçant',
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Text(
            //   'Entrer les informations \ndu commerçant',
            //   style: AppTextStyle.titleH1(
            //     color: MyTheme.appBarTitle,
            //     fontWeight: FontWeight.w700,
            //     size: 19,
            //   ),
            //   textAlign: TextAlign.center,
            // ),
            SizedBox(
              height: 70
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
                      label: 'Nom d’utilisateur épargnant',
                      placeholder: 'Tierno',
                      // isRequired: true,
                      fillColor: MyTheme.white,
                      isBorder: false
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
                  child: CustomInputField(
                      label: 'Montant d’épargne',
                      placeholder: 'CFA 10.000',
                      typeInput: TextInputType.number,
                      fillColor: MyTheme.white,
                      isBorder: false
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
                  label: 'Option épargne ',
                  // isRequired: true,
                  selectedValue: 'OTA Tchad 5%',
                  onChanged: (value) {
                    // setState(() {
                    //   selectedValue = value as String;
                    // });
                  },
                  items: [
                    {'label' : '', 'value': 'OTA Tchad 5%'}],
                ),
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
                  label: 'Opérateur DSA',
                  // isRequired: true,
                  selectedValue: _value,
                  onChanged: (value) {
                    setState(() {
                      _value = value as String;
                    });
                  },
                  items: [
                    {'label' : '', 'value': 'Orange'},{'label' : '', 'value': 'MTN Mobile Money'}],
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.2,
            ),
            CustomButon(
              label: 'Continuer',
              raduis: true,
              bg_color: MyTheme.bg_gray,
              onTap: () {
                Navigator.pushNamed(context, '/commercant/depot/validate');
              },
            )
          ],
        ),
      ),
    );
  }
}