import 'package:flutter/services.dart';

class CapitalLetterTextInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    final newText = newValue.text.trim().toString();
    return TextEditingValue(
      selection: newValue.selection,
      text: newText.toUpperCase()
    );
  }

}