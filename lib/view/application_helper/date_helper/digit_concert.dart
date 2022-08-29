class DigitConversation {
  DigitConversation._internal();

  static final DigitConversation _instance = DigitConversation._internal();

  factory DigitConversation() => _instance;

  ///convert 123456789 to ۱۲۳۴۵۶۷۸۹  Or  ۱۲۳۴۵۶۷۸۹ to 123456789
  String changeDigit(String number, String toDigit) {
    var persianNumbers = ['۰', '۱', '۲', '۳', '۴', '۵', '۶', '۷', '۸', '۹'];
    var arabicNumbers = ['٠', '١', '٢', '٣', '٤', '٥', '٦', '٧', '٨', '٩'];
    var enNumbers = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"];

    if (toDigit == 'en') {
      for (var i = 0; i < 10; i++) {
        number = number
            .replaceAll(RegExp(persianNumbers[i]), enNumbers[i])
            .replaceAll(RegExp(arabicNumbers[i]), enNumbers[i]);
      }
    } else {
      for (var i = 0; i < 10; i++) {
        number = number
            .replaceAll(RegExp(enNumbers[i]), persianNumbers[i])
            .replaceAll(RegExp(enNumbers[i]), arabicNumbers[i]);
      }
    }
    return number;
  }
}
