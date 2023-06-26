import 'package:fade_shimmer/fade_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_navigation_bar/controllers/shimmer_controller.dart';

class ShimmerEffectScreen extends StatelessWidget {
  const ShimmerEffectScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.find<ShimmerController>().toggle();
        },
        backgroundColor: Colors.yellow[300],
        child: const Icon(Icons.toggle_off_outlined),
      ),
      body: SizedBox(
        width: Get.width,
        child: ListView.separated(
            itemBuilder: (context, index) {
              var delay = index * 300;
              return Obx(() {
                return Get.find<ShimmerController>().isLoading.value
                    ? Container(
                        margin: const EdgeInsets.symmetric(horizontal: 8),
                        decoration: BoxDecoration(
                          color: const Color(0xFF242424),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              FadeShimmer.round(
                                size: 60,
                                fadeTheme: FadeTheme.dark,
                                millisecondsDelay: delay,
                              ),
                              const SizedBox(width: 15),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  FadeShimmer(
                                    width: 150,
                                    height: 8,
                                    radius: 4,
                                    millisecondsDelay: delay,
                                    fadeTheme: FadeTheme.dark,
                                  ),
                                  const SizedBox(height: 10),
                                  FadeShimmer(
                                    width: 170,
                                    height: 8,
                                    radius: 4,
                                    millisecondsDelay: delay,
                                    fadeTheme: FadeTheme.dark,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      )
                    : Container(
                        margin: const EdgeInsets.symmetric(horizontal: 8),
                        decoration: BoxDecoration(
                          color: const Color(0xFF242424),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              const CircleAvatar(
                                radius: 30.0,
                                child: Icon(Icons.person),
                              ),
                              const SizedBox(width: 15),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    'Your Contact',
                                    style: TextStyle(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: 10),
                                  Text('slm bdri?'),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
              });
            },
            separatorBuilder: (context, index) {
              return const SizedBox(
                height: 8,
              );
            },
            itemCount: 10),
      ),
    );
  }
}
