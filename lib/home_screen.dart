import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx_navigation_bar/controllers/navigation_bar_controller.dart';
import 'package:getx_navigation_bar/shimmer_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigation bar App'),
        centerTitle: true,
        backgroundColor: Colors.grey[900],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.grey[900],
        onPressed: () {
          Get.changeTheme(ThemeData.dark());
        },
        child: const Icon(Icons.nightlight),
      ),
      bottomNavigationBar: Obx(() {
        return AnimatedBottomNavigationBar(
            icons: const [
              Icons.home,
              Icons.search,
              Icons.favorite,
              Icons.person
            ],
            activeIndex: Get.find<NavigationBarController>().index.value,
            gapLocation: GapLocation.center,
            notchSmoothness: NotchSmoothness.softEdge,
            activeColor: Colors.yellow[300],
            inactiveColor: Colors.white,
            backgroundColor: Colors.grey[900],
            onTap: (index) =>
                Get.find<NavigationBarController>().index.value = index
            //other params
            );
      }),
      body: const ShimmerEffectScreen(),
    );
  }
}
