import 'package:flutter/material.dart';

var this_year = DateTime.now().year.toString();

class AppConfig {
  static String copyright_text = "@ DSA " + this_year;
  //this shows in the splash screen
  static String app_name = "DSA";

  //Default language config
  static String default_language = "fr";
  static String mobile_app_code = "fr";
  static bool app_language_rtl = false;

  //configure this
  static const bool HTTPS = false;

  //configure this
  static const DOMAIN_PATH = "192.168.88.193";
  // directly inside the public folder

  //do not configure these below
  static const String API_ENDPATH = "api/v2";
  static const String PROTOCOL = HTTPS ? "https://" : "http://";
  static const String RAW_BASE_URL = "${PROTOCOL}${DOMAIN_PATH}";
  static const String BASE_URL = "${RAW_BASE_URL}/${API_ENDPATH}";
}
