import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:lottie/lottie.dart';
import './my_home_pages_view_model.dart';

class MyHomePagesView extends MyHomePagesViewModel
    with TickerProviderStateMixin {
  late final AnimationController _controller;
  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
    );
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Replace this with your build function
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Lottie.asset("assets/sunset.json", controller: _controller,
                onLoaded: (composition) {
              _controller
                ..duration = composition.duration
                ..forward().then((value) => Get.toNamed(
                      '/profile',
                    ));
            }),
          ),
          Expanded(
            child: Center(
              child: ElevatedButton(
                child: const Text("Go to the Profile Page "),
                onPressed: () =>
                    Get.toNamed('/profile', arguments: {'name': 'Umar'}),
              ),
            ),
            flex: 3,
          ),
        ],
      ),
    );
  }
}
