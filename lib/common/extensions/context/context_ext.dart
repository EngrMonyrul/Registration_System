import 'package:flutter/material.dart';

extension ContextX on BuildContext {
  Size get screenSize => MediaQuery.of(this).size;

  ThemeData get theme => Theme.of(this);

  SizedBox get topPadding => SizedBox(height: MediaQuery.of(this).padding.top);
}
