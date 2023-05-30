import 'package:ejara_growth_dsa/my_theme.dart';
import 'package:ejara_growth_dsa/ui_elements/custom_app_bar.dart';
import 'package:ejara_growth_dsa/ui_elements/custom_button.dart';
import 'package:ejara_growth_dsa/ui_elements/custom_input_field.dart';
import 'package:flutter/material.dart';

class SettingContactConfirmScreen extends StatefulWidget {
  const SettingContactConfirmScreen({Key? key}) : super(key: key);

  @override
  State<SettingContactConfirmScreen> createState() => _SettingContactConfirmScreenState();
}

class _SettingContactConfirmScreenState extends State<SettingContactConfirmScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.seetingAppBar(
          onTap: (){
            Navigator.pop(context);
          },
          title: 'Confirmer le numéro',
          leading: true,
          isActions: false
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 100,
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
                      label: 'Code de confirmation',
                      placeholder: '0000',
                      typeInput: TextInputType.number,
                      fillColor: MyTheme.white,
                      isBorder: false
                  )
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.5,
            ),
            CustomButon(
              label: 'Continuer',
              raduis: true,
              bg_color: MyTheme.bg_gray,
              onTap: () {
                Navigator.pushNamed(context, '/settings/contact/validate');
              },
            )
          ],
        ),
      ),
    );
  }
}
