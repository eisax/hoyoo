import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hoyoo/helper/route_helper.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key, }) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void _route() async {
    Timer(const Duration(microseconds: 10), () async {
       Get.offAllNamed(RouteHelper.auth);
        Get.offAllNamed(RouteHelper.home);
    
    });
  }

  @override
  void initState() {
    super.initState();
    _route();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Get.width,
        height: Get.height,
        color: Theme.of(context).cardColor,
        child: const Center(
          child: Text("hoyoo"),
        ),
      ),
    );
  }
}
