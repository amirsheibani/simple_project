import 'package:flutter/services.dart';

class MaxLengthLimitTextInputFormatter extends TextInputFormatter {
  final int lengthLimit;

  MaxLengthLimitTextInputFormatter({required this.lengthLimit});

  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    final oldText = oldValue.text.trim().toString();
    final newText = newValue.text.trim().toString();
    return TextEditingValue(
      selection: newValue.selection,
      text: newText.length > lengthLimit ? oldText : newText
    );
  }

}