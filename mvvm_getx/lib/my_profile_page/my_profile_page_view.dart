import 'package:flutter/material.dart';
import './my_profile_page_view_model.dart';
import 'package:get/get.dart';

class MyProfilePageView extends MyProfilePageViewModel {
  @override
  Widget build(BuildContext context) {
    // Replace this with your build function
    return Scaffold(
      body: context.isPortrait
          ? const Center(
              child: Text("Portrait"),
            )
          : const Center(
              child: Text("Landscape"),
            ),
    );
  }
}
