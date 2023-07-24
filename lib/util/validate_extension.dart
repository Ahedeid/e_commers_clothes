import 'dart:core';
import 'dart:io';

extension ExtendedString on String {
  String? validateEmail() {
    if (trim().isEmpty) {
      return 'Please enter your email address';
    }
    // Check if the entered email has the right format
    if (!RegExp(r'\S+@\S+\.\S+').hasMatch(this)) {
      return '🚩Please enter a valid email address';
    }
    // Return null if the entered email is valid
    return null;
  }

  String? validatePassword() {
    RegExp hasUpper = RegExp(r'[A-Z]');
    RegExp hasLower = RegExp(r'[a-z]');
    RegExp hasDigit = RegExp(r'\d');
    RegExp hasPunct = RegExp(r'[!@#$&*~-]');
    // 2
    if (!RegExp(r'.{10,}').hasMatch(this)) {
      return 'Passwords must have at least 10 characters';
    }
    // 3
    if (!hasUpper.hasMatch(this)) {
      return 'Passwords must have at least one uppercase character';
    }
    // 4
    if (!hasLower.hasMatch(this)) {
      return 'Passwords must have at least one lowercase character';
    }
    // 5
    if (!hasDigit.hasMatch(this)) {
      return 'Passwords must have at least one number';
    }
    // 6
    if (!hasPunct.hasMatch(this)) {
      return 'Passwords need at least one special character like !@#\$&*~-';
    }
    // 7
    return null;
  }

  String? validateAccountNumber() {
    if (trim().isEmpty) {
      return 'Please enter your Account Number';
    }
    // Check if the entered email has the right format
    if (length < 7 || length > 8) {
      return '🚩Please enter a valid Account Number';
    }
    // Return null if the entered email is valid
    return null;
  }

  String? validateBankAmount() {
    if (trim().isEmpty) {
      return 'Please enter amount';
    }
    if (length < 2) {
      return "please enter valid amount";
    }

    if (int.parse(this) < 10) {
      return "The minimum amount to withdraw 10 \$";
    }
    return null;
  }

  String? validateUserName() {
    if (trim().isEmpty) {
      return 'Please enter your name';
    }
    if (trim().length < 3) {
      return 'Please entar valid name';
    }
    return null;
  }

  String? validatePhoneNumber() {
    if (trim().isEmpty) {
      return '📱Please enter Phone Number';
    }
    if (trim().length < 10 || length > 15) {
      return 'Please enter valid Phone Number';
    }

    // Return null if the entered password is valid
    return null;
  }

  String? validateCode() {
    if (trim().isEmpty) {
      return 'This field is required';
    }
    if (trim().length < 5) {
      return 'Code must be at least 5 characters in length';
    }
    // Return null if the entered password is valid
    return null;
  }

  String? validateIdNumber() {
    if (trim().isEmpty) {
      return '📱Please enter Id Number';
    }
    if (trim().length < 12) {
      return 'Please enter valid Phone Number';
    }
    return null;
  }
}

class Validate {
  // Validate._();
  static String? validateEmail(value) {
    if (value == null || value.trim().isEmpty) {
      return 'Please enter your email address';
    }
    // Check if the entered email has the right format
    if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
      return '🚩Please enter a valid email address';
    }
    // Return null if the entered email is valid
    return null;
  }

  static String? validatePassword(value) {
    RegExp hasUpper = RegExp(r'[A-Z]');
    RegExp hasLower = RegExp(r'[a-z]');
    RegExp hasDigit = RegExp(r'\d');
    RegExp hasPunct = RegExp(r'[!@#$&*~-]');
    // 2
    if (!RegExp(r'.{10,}').hasMatch(value)) {
      return 'Passwords must have at least 10 characters';
    }
    // 3
    if (!hasUpper.hasMatch(value)) {
      return 'Passwords must have at least one uppercase character';
    }
    // 4
    if (!hasLower.hasMatch(value)) {
      return 'Passwords must have at least one lowercase character';
    }
    // 5
    if (!hasDigit.hasMatch(value)) {
      return 'Passwords must have at least one number';
    }
    // 6
    if (!hasPunct.hasMatch(value)) {
      return 'Passwords need at least one special character like !@#\$&*~-';
    }
    // 7
    return null;
    // if (value == null || value.trim().isEmpty) {
    //   return 'This field is required';
    // }
    // if (value.trim().length < 10) {
    //   return '❗Password must be at least 8 characters in length';
    // }
    // // Return null if the entered password is valid
    // // return "✅ Nice work. This is an excellent password";
    // return null;
  }

  static String? validateRePassword(value, String password) {
    if (value != password) {
      return 'password does not match';
    }
    return null;
  }

  static String? validateUserName(value) {
    if (value == null || value.trim().isEmpty) {
      return 'Please enter your name';
    }
    if (value.trim().length < 3) {
      return 'Please enter valid name';
    }

    // Return null if the entered password is valid
    return null;
  }

  static String? validateCode(value) {
    if (value == null || value.trim().isEmpty) {
      return 'This field is required';
    }
    if (value.trim().length < 6) {
      return 'Code must be at least 4 characters in length';
    }
    // Return null if the entered password is valid
    return null;
  }

  static String? validatePhoneNumber(value) {
    if (value == null || value.trim().isEmpty) {
      return '📱Please enter Phone Number';
    }
    if (value.trim().length < 11) {
      return 'Please entar valid Phone Number';
    }

    // Return null if the entered password is valid
    return null;
  }

  static dynamic validateFile(File? value) {
    if (value == null) {
      return "Upload a File";
    }
    return null;
  }
}

extension PaymentCardValidation on String {
  bool get isValidCardNumber {
    String cardNumber =
        this.replaceAll(RegExp(r'\s+\b|\b\s'), ''); // Remove spaces

    int sum = 0;
    bool isSecondDigit = false;

    for (int i = cardNumber.length - 1; i >= 0; i--) {
      int? digit = int.tryParse(cardNumber[i]);
      if (digit == null) {
        // Invalid character found
        return false;
      }

      if (isSecondDigit) {
        digit *= 2;
        if (digit > 9) {
          digit = digit % 10 + 1;
        }
      }

      sum += digit;
      isSecondDigit = !isSecondDigit;
    }

    return sum % 10 == 0;
  }
}

extension ExpirationDateValidation on DateTime {
  bool get isValidExpirationDate {
    DateTime currentDate = DateTime.now();

    if (this.isBefore(currentDate)) {
      // Date is in the past
      return false;
    }

    return true;
  }
}

extension CVCValidation on String {
  bool get isValidCVC {
    if (this.length < 3 || this.length > 4) {
      // Invalid length
      return false;
    }

    if (!RegExp(r'^\d+$').hasMatch(this)) {
      // Non-numeric characters found
      return false;
    }

    return true;
  }
}
