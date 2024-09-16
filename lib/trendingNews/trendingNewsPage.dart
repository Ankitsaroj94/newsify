import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newsify/uiComponents/colors.dart';
import '../appbar_bottom_nav_bar/appbar.dart';

class TrendingNewsPage extends StatelessWidget {
  const TrendingNewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.grey800,
      appBar: const CustomAppbar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 12.0, right: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Trending News",
                  style: TextStyle(fontSize: 20, color: Colors.white), // Adjust text style as needed
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text("See more"),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: SafeArea(
              child: Row(
                children: [
                  trendingNewsWidget(),
                  trendingNewsWidget(),
                  trendingNewsWidget(),
                  trendingNewsWidget(),
                  trendingNewsWidget(),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12.0,right: 12,bottom: 5,top: 5),
            child:

             Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Latest news",style: TextStyle(color: Color(0xFFFAFAFA)),),
                TextButton(
                  onPressed: () {},
                  child: const Text("See more"),
                ),              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [

                  CustomNewsWidget(),
                  CustomNewsWidget(),
                  CustomNewsWidget(),
                  CustomNewsWidget(),
                  CustomNewsWidget(),
                  CustomNewsWidget(),
                  CustomNewsWidget(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget trendingNewsWidget() {
  return Padding(
    padding: const EdgeInsets.all(12.0),
    child: Container(
      height: 300,
      width: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppColors.grey400,
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0),
            child: Container(
              height: 200,
              width: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: AppColors.grey300,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}


Widget CustomNewsWidget() {
  return Padding(
    padding: const EdgeInsets.only(bottom: 8.0, left: 12, right: 12),
    child: Container(
      height: 150,
      width: Get.width, // Ensure full width
      decoration: BoxDecoration(
        color: AppColors.grey400,
        borderRadius: BorderRadius.circular(10), // Optional: Rounded corners
      ),
      child: Row(
        children: [
          Container(
            height: 100,
            width: 100,
            margin: const EdgeInsets.all(10), // Add margin around the image
            decoration: BoxDecoration(
              color: AppColors.grey200,
              borderRadius: BorderRadius.circular(10), // Optional: Rounded corners
            ),
          ),
          const Expanded(
            child: Center(
              child: Text(
                "Data",
                style: TextStyle(color: AppColors.textColor, fontSize: 16), // Adjust text style as needed
              ),
            ),
          ),
        ],
      ),
    ),
  );
}