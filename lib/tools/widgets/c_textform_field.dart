import 'package:flutter/material.dart';
import 'package:station_service_mobile/tools/utils/textform_field_validator.dart';

class CTextFormField extends StatelessWidget {
  final String? labelText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final InputBorder? border;
  final TextEditingController? controller;
  final bool require;
  final String? hintText;
  final EdgeInsetsGeometry? margin;
  final void Function(String)? onChanged;
  final int? maxLines;
  final bool readOnly;
  final String? initialValue;
  final int? maxLength;
  final int? minLength;
  final bool obscureText;
  final Color? fillColor;
  final bool? enabled;
  final TextInputType? keyboardType;
  final void Function()? onTap;
  final TextAlign textAlign;
  const CTextFormField(
      {this.controller,
      this.textAlign = TextAlign.start,
      this.keyboardType,
      this.enabled,
      this.minLength,
      this.onTap,
      this.fillColor = Colors.white,
      this.initialValue,
      this.obscureText = false,
      this.readOnly = false,
      this.maxLength,
      this.maxLines = 1,
      this.onChanged,
      this.margin = const EdgeInsets.only(bottom: 10),
      this.border,
      this.require = false,
      this.prefixIcon,
      this.suffixIcon,
      this.labelText,
      this.hintText,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: TextFormField(
        initialValue: initialValue,
        readOnly: readOnly,
        maxLines: maxLines,
        obscureText: obscureText,
        maxLength: maxLength,
        onChanged: onChanged,
        keyboardType: keyboardType,
        controller: controller,
        enabled: enabled,
        textAlign: textAlign,
        cursorHeight: 20,
        style: const TextStyle(
          fontSize: 15,
        ),
        validator: (value) {
          if (require) {
            if (value!.isEmpty) {
              return "Ce champs est obligatoire";
            }
            if (minLength != null) {
              return TextFormFieldValidator.minLength(value, minLength!);
            }

            if (keyboardType == TextInputType.emailAddress) {
              return TextFormFieldValidator.email.call(value);
            } else if (keyboardType == TextInputType.phone) {
              return TextFormFieldValidator.phone.call(value);
            } else {
              return null;
            }
          } else {
            if (value!.isNotEmpty) {
              if (keyboardType == TextInputType.emailAddress) {
                return TextFormFieldValidator.email.call(value);
              } else if (keyboardType == TextInputType.phone) {
                if (minLength != null && value.length < minLength!) {
                  return TextFormFieldValidator.phone.call(value);
                }
                return null;
              } else {
                return null;
              }
            }
            return null;
          }
        },
        onTap: onTap,
        decoration: InputDecoration(
          counterText: "",
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          suffixIcon: suffixIcon,
          labelText: (require && labelText != null) ? "$labelText*" : labelText,
          hintText: hintText,
          hintStyle: const TextStyle(
            fontSize: 15,
          ),
          prefixIcon: prefixIcon,
          fillColor: fillColor,
          filled: true,
          errorBorder: border ??
              OutlineInputBorder(
                borderSide: const BorderSide(
                  width: 0.5,
                  color: Colors.red,
                ),
                borderRadius: BorderRadius.circular(5),
              ),
          focusedBorder: border ??
              OutlineInputBorder(
                borderSide: const BorderSide(
                  width: 0.5,
                  color: Color.fromRGBO(181, 196, 216, 1),
                ),
                borderRadius: BorderRadius.circular(5),
              ),
          enabledBorder: border ??
              OutlineInputBorder(
                borderSide: const BorderSide(
                  width: 1,
                  color: Color.fromRGBO(181, 196, 216, 1),
                ),
                borderRadius: BorderRadius.circular(5),
              ),
          border: border ??
              OutlineInputBorder(
                borderSide: const BorderSide(
                  width: 1,
                  color: Color.fromRGBO(181, 196, 216, 1),
                ),
                borderRadius: BorderRadius.circular(5),
              ),
        ),
      ),
    );
  }
}
