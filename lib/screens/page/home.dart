import 'package:ejara_growth_dsa/my_theme.dart';
import 'package:ejara_growth_dsa/styles/text_style.dart';
import 'package:ejara_growth_dsa/ui_elements/custom_button.dart';
import 'package:ejara_growth_dsa/ui_elements/transaction_item.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
   bool balanceIsVible = true;
  @override
  void initState() {
    super.initState();
    balanceIsVible = true;
  }
  _onKeyboardTap(bool value) {
    setState(() {
      balanceIsVible = !value;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height*0.1,
                    left: 10,
                    right: 10
                ),
                child: Container(
                  height: balanceIsVible == true ? 251 : 210,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(40.0)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 8,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 23,
                          left: 30.26,
                          right: 20,
                        ),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.pushNamed(context, '/settings');
                          },
                          child: Image.asset('assets/images/icons/settings.png',
                            width: 26.5,
                            height:25 ,),
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Balance Float',
                            style: AppTextStyle.subTitle(
                                fontSize: 20,
                                fontWeight:FontWeight.w700,
                                color: MyTheme.bg_gray),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          GestureDetector(
                            onTap: (){
                              _onKeyboardTap(balanceIsVible);
                            },
                            child: Icon(
                              balanceIsVible == true ? Icons.visibility_off_rounded : Icons.visibility_rounded,
                              color: MyTheme.bg_green,
                              size: 25,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      balanceIsVible == true ? Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            '500.000',
                            style: AppTextStyle.titleH1(
                                fontFamily:'Metropolis',
                                size:40,
                                color: MyTheme.bg_gray),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            'F',
                            style: AppTextStyle.titleH1(
                                fontFamily:'Metropolis',
                                size:25,
                                color: MyTheme.bg_gray),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ) : Container(),
                      SizedBox(
                        height: 31,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CustomButon(
                              height:50 ,
                              v_raduis: 100,
                              width: 155,
                              label: 'Dépôt',
                              txt_color: Colors.black,
                              raduis: true,
                              bg_color: MyTheme.bg_w,
                              onTap: () {
                                Navigator.pushNamed(context, '/transaction/depot');
                              },
                              is_paginate : false
                          ),
                          CustomButon(
                              v_raduis: 100,
                              height:50 ,
                              width: 155,
                              label: 'Retrait',
                              txt_color: Colors.black,
                              raduis: true,
                              bg_color: MyTheme.bg_w,
                              onTap: () {
                                Navigator.pushNamed(context, '/transaction/retrait');
                              },
                              is_paginate : false
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 49,
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: 10,
                    right: 10
                ),
                child: GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, '/commercant/depot');
                  },
                  child: Container(
                    height: 125,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(40.0)
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: 23,
                            left: 15,
                            right: 15,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
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
                                      child: Image.asset('assets/images/icons/home.png', height: 19,width: 22,),
                                    ),
                                  ),
                                  SizedBox(width: 15,),
                                  Text(
                                    'Collecte journalière',
                                    style: AppTextStyle.titleH1(
                                        size:20,
                                        color: MyTheme.bg_gray),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),

                              GestureDetector(
                                onTap: (){
                                  Navigator.pushNamed(context, '/commercant/depot');
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

                        SizedBox(
                          height: 1,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 71
                          ),
                            child: Text(
                              'Collecte de l’argent auprès \ndes commerçants chaque jour',
                              style: AppTextStyle.subTitle(
                                fontSize: 15,
                                  color: MyTheme.sub_title),
                              textAlign: TextAlign.left,
                            )),
                        SizedBox(
                          height: 6,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 72,
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: 10,
                    right: 10
                ),
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: 23,
                          left: 15,
                          right: 15,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: MyTheme.green,
                                  borderRadius: BorderRadius.circular(5.0)
                              ),
                              child: Center(
                                child: Image.asset('assets/images/icons/clock.png', height: 18,width: 18,),
                              ),
                            ),
                            SizedBox(width: 10,),
                            Text(
                              'Transactions',
                              style: AppTextStyle.titleH1(
                                  size:18,
                                  color: MyTheme.bg_gray),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 20,
                            right: 20
                        ),
                        child: ListView(
                          shrinkWrap: true,
                          children: [
                            TransactionItem(
                              transaction: 'Cash-in OTA Tchad vers tiernotest',
                              transactionDate: '6 Avril 2023 a 07:43',
                              transactionAmount: -100.00,
                            ),
                            TransactionItem(
                              transaction: 'Dépôt Mobile Money 0662222222',
                              transactionDate: '6 Avril 2023 a 07:43',
                              transactionAmount: 100.00,
                            ),
                            TransactionItem(
                              transaction: 'Retrait Mobile Money 0662222222',
                              transactionDate: '6 Avril 2023 a 07:43',
                              transactionAmount: -100.00,
                            ),
                            TransactionItem(
                              transaction: 'Cash-out tiernotest vers OTA Tchad',
                              transactionDate: '6 Avril 2023 a 07:43',
                              transactionAmount: 100.00,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      //bottomSheet: CustomBottomSheet(),
    );
  }
}
