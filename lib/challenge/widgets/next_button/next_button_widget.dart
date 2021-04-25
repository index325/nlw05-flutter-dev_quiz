import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:DevQuiz/core/app_colors.dart';

class NextButtonWidget extends StatelessWidget {
  final String label;
  final Color backgroundColor;
  final Color fontColor;
  final Color borderColor;
  final VoidCallback onTap;

  const NextButtonWidget({
    Key? key,
    required this.label,
    required this.backgroundColor,
    required this.fontColor,
    required this.borderColor,
    required this.onTap,
  }) : super(key: key);

  NextButtonWidget.green({
    required String label,
    required VoidCallback onTap,
  })  : this.backgroundColor = AppColors.darkGreen,
        this.fontColor = AppColors.white,
        this.borderColor = AppColors.green,
        this.onTap = onTap,
        this.label = label;

  NextButtonWidget.white({
    required String label,
    required VoidCallback onTap,
  })  : this.backgroundColor = AppColors.white,
        this.fontColor = AppColors.grey,
        this.borderColor = AppColors.border,
        this.onTap = onTap,
        this.label = label;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      child: TextButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(backgroundColor),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            side: MaterialStateProperty.all(
              BorderSide(
                color: borderColor,
              ),
            ),
          ),
          onPressed: onTap,
          child: Text(
            label,
            style: GoogleFonts.notoSans(
              fontSize: 15,
              fontWeight: FontWeight.w600,
              color: fontColor,
            ),
          )),
    );
  }
}
