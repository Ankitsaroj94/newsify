import 'package:flutter/material.dart';
import 'package:newsify/uiComponents/colors.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.grey800,
      leading: IconButton(
        icon: const Icon(Icons.newspaper_rounded),
        onPressed: () {

        },
      ),
      title: const Text("Newsify"),
      centerTitle: true,
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: const Icon(Icons.search,color:Color(0xFF212121),),
              onPressed: () {},
            ),
          ],
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
