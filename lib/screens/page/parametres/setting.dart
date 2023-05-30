import 'package:ejara_growth_dsa/my_theme.dart';
import 'package:ejara_growth_dsa/styles/text_style.dart';
import 'package:ejara_growth_dsa/ui_elements/custom_app_bar.dart';
import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.seetingAppBar(
        title: 'Mes Paramètres',
          onTap: (){
            Navigator.pushNamed(context, '/home');
          }
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 85,
            ),
            GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, '/settings/pin-code');
              },
              child: Padding(
                padding: EdgeInsets.only(
                    left: 0,
                    right: 0
                ),
                child: Container(
                  height: 71,
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
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: 23,
                          left: 30.26,
                          right: 20,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: Colors.blueAccent,
                                  borderRadius: BorderRadius.circular(5.0)
                              ),
                              child: Center(
                                child: Image.asset('assets/images/icons/pin.png', height: 19,width: 22,),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Code Pin',
                              style: AppTextStyle.titleH1(
                                  size:16,
                                  color: MyTheme.bg_gray),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width*0.48,
                            ),
                            GestureDetector(
                              onTap: (){
                                Navigator.pushNamed(context, '/settings/pin-code');
                              },
                              child: Icon(
                                Icons.arrow_forward_ios_sharp,
                                color: MyTheme.sub_title,
                                size: 20,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 1.0,
            ),
            GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, '/settings/contact');
              },
              child: Padding(
                padding: EdgeInsets.only(
                    left: 0,
                    right: 0
                ),
                child: Container(
                  height: 71,
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
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: 23,
                          left: 30.26,
                          right: 20,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: Colors.blueAccent,
                                  borderRadius: BorderRadius.circular(5.0)
                              ),
                              child: Center(
                                child: Image.asset('assets/images/icons/phone_validate.png', height: 19,width: 22,),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Numéro Mobile Money',
                              style: AppTextStyle.titleH1(
                                  size:16,
                                  color: MyTheme.bg_gray),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width*0.22,
                            ),
                            GestureDetector(
                              onTap: (){
                                Navigator.pushNamed(context, '/settings/contact');
                              },
                              child: Icon(
                                Icons.arrow_forward_ios_sharp,
                                color: MyTheme.sub_title,
                                size: 20,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
