

import 'package:flutter/material.dart';

import 'colors.dart';

class CustomTextFormField extends StatelessWidget {


  final String formHintText;


  const CustomTextFormField({super.key,

    required this.formHintText,
});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Handle tap if needed
      },
      child: Card(
        color: AppColors.backgroundColor,
        child: TextFormField(
          decoration:  InputDecoration(hintText: formHintText,
            contentPadding: const EdgeInsets.symmetric(horizontal: 12.0),
            border: InputBorder.none, // Removes the underline
          ),
          autofillHints: const <String>["Ankit"],
          style: const TextStyle(
            color: AppColors.textColor,
          ),
        ),
      ),
    );
  }
}
