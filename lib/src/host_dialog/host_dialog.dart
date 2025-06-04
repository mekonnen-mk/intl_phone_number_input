import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/dialog_header.dart';
import 'widgets/dismiss_button.dart';

class HostDialog extends StatelessWidget {
  const HostDialog({
    this.child,
    super.key,
    this.width,
    this.hasDismiss = true,
    this.title,
    this.subtitle,
    this.actionsAxis = Axis.horizontal,
    this.actionsSpacing = 15.0,
  });

  final bool hasDismiss;
  final Widget? child;
  final double? width;
  final String? title;
  final String? subtitle;
  final Axis actionsAxis;
  final double actionsSpacing;

  Widget? get header =>
      (title != null || subtitle != null) ? DialogHeader(title: title) : null;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (hasDismiss) ...[
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 15.r),
                  child: DismissButton(),
                ),
              ),
            ],
            if (header case final header?) header,
            if (child case final child?) child,
          ],
        ),
      ),
    );
  }
}
