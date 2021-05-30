import 'dart:ui';

class KColors {
  static const Color primaryColor = Color(0xFFFDC521);
  static const Color textColor = Color(0xFF22242B);
  static const Color darkBlue = Color(0xFF2e3B72);
  static const Color grey = Color(0xFFEBEBEB);
  static const Color red = Color(0xFFED000E);
  static const Color white = Color(0xFFFAFAFA);
}

class KText {
  static TextStyle title = TextStyle(
    fontSize: 24,
    color: KColors.primaryColor,
    fontWeight: FontWeight.bold
  );

  static TextStyle normal = TextStyle(
    fontSize: 18,
    color: KColors.primaryColor,
    fontWeight: FontWeight.w600
  );

  static TextStyle small = TextStyle(
    fontSize: 16,
    color: KColors.primaryColor,
    fontWeight: FontWeight.normal
  );
}
