import 'package:flutter/material.dart';
import 'package:newsify/uiComponents/colors.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color? color;
  final Color? textColor;
  final double? borderRadius;
  final double? padding;

  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.color,
    this.textColor,

    this.borderRadius = 12.0,
    this.padding = 8.0,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: AppColors.textButtonBackgroundColor,
        padding: EdgeInsets.symmetric(vertical: padding!),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius!),

        ),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
          color: textColor ?? Colors.white,
          fontSize: 16.0,
        ),
      ),
    );
  }
}
