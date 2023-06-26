import 'package:fade_shimmer/fade_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShimmerEffectScreen extends StatelessWidget {
  const ShimmerEffectScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.toggle_off_outlined),
      ),
      body: SizedBox(
        width: Get.width,
        child: ListView.separated(
            itemBuilder: (context, index) {
              var delay = index * 300;
              return Container(
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
                          SizedBox(height: 10),
                          FadeShimmer(
                            width: 170,
                            height: 8,
                            radius: 4,
                            millisecondsDelay: delay,
                            fadeTheme: FadeTheme.dark,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              );
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
