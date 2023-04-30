import 'package:get/get.dart';

abstract class TextFormFieldValidator {
  static String? email(String value) =>
      value.isEmail ? null : "Veuillez saisir un mail valide.";

  static String? phone(String value) =>
      value.isEmail ? null : "Veuillez saisir un téléphone valide.";

  static String? minLength(String value, int minLength) =>
      value.length >= minLength
          ? null
          : "Ce champ requiert $minLength caractères.";
}
