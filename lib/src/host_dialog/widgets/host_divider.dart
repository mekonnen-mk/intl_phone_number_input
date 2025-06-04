import 'package:flutter/material.dart';

/// A custom divider widget that can be used in various parts of the app.
/// It allows customization of height, thickness, indent, endIndent, and color.
///
class HostDivider extends StatelessWidget {
  const HostDivider({
    super.key,
    this.height,
    this.thickness,
    this.indent,
    this.endIndent,
    this.color,
  });

  final double? height;
  final double? thickness;
  final double? indent;
  final double? endIndent;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: height ?? 1,
      thickness: thickness ?? 1,
      indent: indent,
      endIndent: endIndent ?? 0,
      color: const Color(0xffE1E1E2),
    );
  }
}
