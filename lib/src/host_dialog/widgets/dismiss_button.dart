import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DismissButton extends StatelessWidget {
  const DismissButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pop(context),
      child: SvgPicture.asset(
        'assets/svg/ic_close.svg',
        height: 24,
        width: 24,
      ),
    );
  }
}
