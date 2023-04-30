import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class Const {
  static const String appName = "TAPA Business";
  static const String appVersion = '1.0.0';
  static const Color primaryColor = Color(0xFFF5A623);
  static const Color secondaryColor = Color(0xFF778ca3);
  static var defaultFont = GoogleFonts.montserrat();

  static var onlineUrl = "https://business.tapa.ci/api";
  static var localUrl = "http://192.168.1.118:8000/api";
}
