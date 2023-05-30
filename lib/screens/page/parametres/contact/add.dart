import 'package:ejara_growth_dsa/my_theme.dart';
import 'package:ejara_growth_dsa/styles/text_style.dart';
import 'package:ejara_growth_dsa/ui_elements/custom_app_bar.dart';
import 'package:ejara_growth_dsa/ui_elements/custom_button.dart';
import 'package:ejara_growth_dsa/ui_elements/custom_input_field.dart';
import 'package:ejara_growth_dsa/ui_elements/custom_select_input.dart';
import 'package:flutter/material.dart';


class SettingAddContactScreen extends StatefulWidget {
  const SettingAddContactScreen({Key? key}) : super(key: key);

  @override
  State<SettingAddContactScreen> createState() => _SettingAddContactScreenState();
}

class _SettingAddContactScreenState extends State<SettingAddContactScreen> {
  String _value = 'Orange Money';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.authAppBar(
          onTap: (){
            Navigator.pop(context);
          },
          leading: true,
        title:  'Ajouter un numéro \nMobile money'
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Text(
            //   'Ajouter un numéro \nMobile money',
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
                child: CustomSelectField(
                  isBorder: false,
                  label: 'Opérateur Mobile Money',
                  // isRequired: true,
                  selectedValue: _value,
                  onChanged: (value) {
                    setState(() {
                      _value = value as String;
                    });
                  },
                  items: [
                    {'label' : '', 'value': 'Orange Money'},{'label' : '', 'value': 'Mtn Mobile Money'}],
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
                  child: CustomInputField(
                      label: 'Numéro de téléphone',
                      placeholder: '+225 0788998877',
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
                      label: 'Nom complet',
                      placeholder: 'Tierno Tall',
                      // isRequired: true,
                      fillColor: MyTheme.white,
                      isBorder: false
                  )
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.3,
            ),
            CustomButon(
              label: 'Continuer',
              raduis: true,
              bg_color: MyTheme.bg_gray,
              onTap: () {
                Navigator.pushNamed(context, '/settings/contact/confirm');
              },
            )
          ],
        ),
      ),
    );
  }
}
