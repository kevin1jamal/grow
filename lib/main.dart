import 'package:ejara_growth_dsa/app_config.dart';
import 'package:ejara_growth_dsa/screens/auth/login.dart';
import 'package:ejara_growth_dsa/screens/auth/pinCode.dart';
import 'package:ejara_growth_dsa/screens/page/commercant/depot.dart';
import 'package:ejara_growth_dsa/screens/page/commercant/validate.dart';
import 'package:ejara_growth_dsa/screens/page/depot/depot.dart';
import 'package:ejara_growth_dsa/screens/page/depot/validate.dart';
import 'package:ejara_growth_dsa/screens/page/depot_dsa.dart';
import 'package:ejara_growth_dsa/screens/page/home.dart';
import 'package:ejara_growth_dsa/screens/page/parametres/contact/add.dart';
import 'package:ejara_growth_dsa/screens/page/parametres/contact/confirm.dart';
import 'package:ejara_growth_dsa/screens/page/parametres/pin_code/confirm_new_pin_code.dart';
import 'package:ejara_growth_dsa/screens/page/parametres/pin_code/confirm_pin_confirm.dart';
import 'package:ejara_growth_dsa/screens/page/parametres/pin_code/old_pin_confirm.dart';
import 'package:ejara_growth_dsa/screens/page/parametres/pin_code/validate.dart';
import 'package:ejara_growth_dsa/screens/page/parametres/setting.dart';
import 'package:ejara_growth_dsa/screens/page/parametres/contact/validate.dart';
import 'package:ejara_growth_dsa/screens/page/retrait/retrait.dart';
import 'package:ejara_growth_dsa/screens/page/retrait/validate.dart';
import 'package:ejara_growth_dsa/screens/page/status_depot_dsa.dart';
import 'package:ejara_growth_dsa/screens/page/support.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppConfig.app_name,
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      initialRoute: '/signin',
      routes: <String, WidgetBuilder>{
        '/signin': (BuildContext context) => new LoginScreen(),
        '/transaction/depot': (BuildContext context) =>
            new DepotScreen(),
        '/transaction/depot/statut': (BuildContext context) =>
        new DepotValidateScreen(),
    '/transaction/retrait': (BuildContext context) =>
    new RetraitScreen(),
    '/transaction/retrait/statut': (BuildContext context) =>
    new RetraitValidateScreen(),
        '/transaction/statut': (BuildContext context) => new StatutDsaScreen(),
        '/auth/pin-validate': (BuildContext context) => new PinCodeScreen(),
        '/support': (BuildContext context) => new SupportScreen(),
        '/home': (BuildContext context) => new HomeScreen(),
        '/settings': (BuildContext context) => new Settings(),
        '/settings/contact': (BuildContext context) => new SettingAddContactScreen(),
        '/settings/contact/validate': (BuildContext context) => new SettingAddContactValidateScreen(),
        '/settings/contact/confirm': (BuildContext context) => new SettingContactConfirmScreen(),
        '/settings/pin-code': (BuildContext context) => new SettingPinOldFormScreen(),
        '/settings/pin-code/new': (BuildContext context) => new SettingPinConfirmFormScreen(),
        '/settings/pin-code/confirm': (BuildContext context) => new SettingPinConfirmNewFormScreen(),
        '/settings/pin-code/validate': (BuildContext context) => new SettingPinValidateScreen(),
        '/commercant/depot': (BuildContext context) => new CommercantDepotDsa(),
        '/commercant/depot/validate': (BuildContext context) => new CommercantValidateDsaScreen(),
      },
    );
  }
}
