import 'package:flutter/material.dart';
class AppIcons {
  // This class is not meant to be instantiated or extended;
  // this constructor prevents instantiation and extension.
  AppIcons._();
  static IconData _fromHash (int hash) => IconData(hash, fontFamily: 'icomoon');

  static final IconData home = _fromHash(0xe908);
  static final IconData subscriptions = _fromHash(0xe90b);
  static final IconData card = _fromHash(0xe902);
  static final IconData cog = _fromHash(0xe994);
  static final IconData arrowUpRight = _fromHash(0xe900);
  static final IconData camera = _fromHash(0xe901);
  static final IconData caretLeft = _fromHash(0xe903);
  static final IconData caretRight = _fromHash(0xe904);
  static final IconData caretUp = _fromHash(0xe905);
  static final IconData check = _fromHash(0xe906);
  static final IconData exit = _fromHash(0xe907);
  static final IconData options = _fromHash(0xe909);
  static final IconData plus = _fromHash(0xe90a);
}
