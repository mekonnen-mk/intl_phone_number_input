import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DialogHeader extends StatelessWidget {
  const DialogHeader(
      {super.key, this.title, this.textAlign = TextAlign.center});

  final String? title;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      spacing: 10.h,
      children: [
        if (title case final title?)
          Text(
            title,
            textAlign: textAlign,
            style: titleStyle,
          ),
      ],
    );
  }

  TextStyle get titleStyle => TextStyle(
        fontFamily: 'Proxima Nova',
        fontSize: 20.spMin,
        fontWeight: FontWeight.w600,
        color: Colors.black,
        height: 1.0,
      );
}
