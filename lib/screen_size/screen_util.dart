library screen_util;

import 'dart:math';
import 'dart:ui' as ui;
import 'package:flutter/material.dart';
part 'screen_util_init.dart';
part 'design_size_model.dart';
part 'size_extension.dart';

class ScreenUtil extends StatefulWidget {
  final Widget widget;
  final DesignSize designSize;
  ScreenUtil({
    required this.widget,
    required this.designSize,
  });

  @override
  _ScreenUtil createState() => _ScreenUtil();
}

class _ScreenUtil extends State<ScreenUtil> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(builder: (context, orientation) {
          calculateValues(orientation: orientation, constraints: constraints);
          return widget.widget;
        });
      },
    );
  }

  calculateValues({
    required BoxConstraints constraints,
    required Orientation orientation,
  }) {
    ScreenUtilInit.init(
        constraints: constraints,
        designSize: widget.designSize,
        orientation: orientation);
  }
}
