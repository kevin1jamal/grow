import 'package:flutter/services.dart';
class Formatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue,
      TextEditingValue newValue,
      ) {
    if (newValue.text.length <= 3) {
      return oldValue;
    }
    return newValue;
  }
}
