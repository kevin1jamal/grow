import 'package:ejara_growth_dsa/my_theme.dart';
import 'package:ejara_growth_dsa/services/formatter.dart';
import 'package:ejara_growth_dsa/styles/text_style.dart';
import 'package:ejara_growth_dsa/ui_elements/custom_app_bar.dart';
import 'package:ejara_growth_dsa/ui_elements/custom_numeric_keyboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:pinput/pinput.dart';
import 'package:flutter/services.dart';

class PinCodeScreen extends StatefulWidget {
  const PinCodeScreen({Key? key}) : super(key: key);

  @override
  State<PinCodeScreen> createState() => _PinCodeScreenState();
}

class _PinCodeScreenState extends State<PinCodeScreen> {
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
        Navigator.pushNamed(context, '/home');
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
          title: '',
        onTap: (){
          Navigator.pop(context);
        }
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 70,
            ),
            Center(
                child: Image.asset(
                  'assets/images/logos/ejara_logo.png',
                  width: 100,
                  height: 100,
                )),
            SizedBox(
              height: 70,
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
                size: 30
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
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            Center(
                child: GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, '/support');
                  },
                  child: Text(
                    'Vous avez oublié votre code PIN?',
                    style: AppTextStyle.subTitle(
                        color: MyTheme.bg_gray),
                    textAlign: TextAlign.center,
                  ),
                ) ),
          ],
        ),
      ),
      //bottomSheet: CustomBottomSheet(),
    );
  }
}


