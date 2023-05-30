import 'package:ejara_growth_dsa/my_theme.dart';
import 'package:ejara_growth_dsa/services/formatter.dart';
import 'package:ejara_growth_dsa/styles/text_style.dart';
import 'package:ejara_growth_dsa/ui_elements/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:pinput/pinput.dart';
import 'package:flutter/services.dart';
import 'package:ejara_growth_dsa/ui_elements/custom_numeric_keyboard.dart';

class SettingPinOldFormScreen extends StatefulWidget {
  const SettingPinOldFormScreen({Key? key}) : super(key: key);

  @override
  State<SettingPinOldFormScreen> createState() => _SettingPinOldFormScreenState();
}

class _SettingPinOldFormScreenState extends State<SettingPinOldFormScreen> {
  late final TextEditingController pinController;
  final defaultPinTheme = PinTheme(
    width: 30,
    height: 30,
    textStyle:  AppTextStyle.subTitle(
        color: MyTheme.bg_gray,
        fontSize: 18,
        fontWeight: FontWeight.w800
    ),
    decoration: BoxDecoration(
      color: MyTheme.white ,
      borderRadius: BorderRadius.circular(40),
      border: Border.all(color: MyTheme.bg_pin_code),
    ),
  );
  _onKeyboardTap(String value) {
    setState(() {
      pinController.text = pinController.text + value;
      if(pinController.text.length == 4){
        Navigator.pushNamed(context, '/settings/pin-code/new');
      }
    });
  }
  @override
  void initState() {
    super.initState();
    pinController = TextEditingController(text: '');
  }
  @override
  void dispose() {
    pinController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.authAppBar(
          leading: true,
          onTap: (){
            Navigator.pop(context);
          },
        title: 'Veuillez saisir \nle code PIN',
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Text(
            //   'Veuillez saisir \nle code PIN',
            //   style: AppTextStyle.titleH1(
            //     color: MyTheme.appBarTitle,
            //     fontWeight: FontWeight.w700,
            //     size: 19,
            //   ),
            //   textAlign: TextAlign.center,
            // ),
            SizedBox(
              height: 200,
            ),
            Pinput(

              keyboardAppearance: Brightness.light,
              // useNativeKeyboard: false,
              separator: SizedBox(width: 28,),
              controller: pinController,
              length: 4,
              toolbarEnabled: false,
              defaultPinTheme: defaultPinTheme,
              inputFormatters: [Formatter()],
              obscuringCharacter: '●',
              obscureText: true,
              showCursor: false,
              obscuringWidget: Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  color: MyTheme.bg_pin_code ,
                  borderRadius: BorderRadius.circular(40),
                  border: Border.all(color: MyTheme.bg_pin_code),
                ),
              ),
            ),
            SizedBox(
              height: 70,
            ),
            CustomNumericKeyboard(
              onKeyboardTap: _onKeyboardTap,
              styleKeboard: AppTextStyle.titleH1(
                  color: MyTheme.black,
                  fontWeight: FontWeight.w400,
                  size: 30,
                  fontFamily: 'Circular-Std'
              ),
              textColor: Colors.black,
              rightButtonFn: () {
                setState(() {
                  pinController.text = pinController.text.substring(0, pinController.text.length - 1);
                });
              },
              rightIcon: Icon(
                Icons.backspace,
                color: Colors.black,
              ),
              leftButtonFn: () {
                print('left button clicked');
              },
            ),
          ],
        ),
      ),
      //bottomSheet: CustomBottomSheet(),
    );
  }
}
