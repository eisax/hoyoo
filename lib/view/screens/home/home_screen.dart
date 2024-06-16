// ignore_for_file: deprecated_member_use

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hoyoo/controller/document_controller.dart';
import 'package:hoyoo/util/dimensiona.dart';
import 'package:get/get.dart';
import 'package:hoyoo/util/images.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<CalculatorControler>(builder: (calculationsController) {
      return Scaffold(
        backgroundColor: const Color(0xFFf1f1f1),
        body: Container(
          width: Get.width,
          height: Get.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                const Color(0xFFF7F8FB),
                const Color(0xFFF7F8FB).withOpacity(0.20),
              ],
            ),
          ),
          child: SafeArea(
            child: Column(
              children: [
                Container(
                  width: Get.width,
                  height: Get.height * 0.3,
                  padding: EdgeInsets.symmetric(
                    horizontal: Dimensions.paddingSizeDefault,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            calculationsController.calculations.toString(),
                            textAlign: TextAlign.end,
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                  fontSize: 24,
                                  color: const Color(0xFF818181),
                                ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: Dimensions.paddingSizeDefault,
                      ),
                      Expanded(
                        flex: 1,
                        child: Text(
                          "-12,454",
                          textAlign: TextAlign.end,
                          style:
                              Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    fontSize: 48,
                                    color: const Color(0xFF424242),
                                  ),
                        ),
                      ),
                      SizedBox(
                        height: Dimensions.paddingSizeExtraLarge,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: Dimensions.paddingSizeLarge),
                    width: Get.width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            BluryButtonWidget(
                              width: 62,
                              height: 40,
                              radius: 16,
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  SizedBox(
                                    width: 9.72,
                                    height: 10.17,
                                    child: SvgPicture.asset(
                                      Images.e,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            BluryButtonWidget(
                              width: 62,
                              height: 40,
                              radius: 16,
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  SizedBox(
                                    width: 9.38,
                                    height: 14.63,
                                    child: SvgPicture.asset(
                                      Images.mu,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            BluryButtonWidget(
                              width: 62,
                              height: 40,
                              radius: 16,
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  SizedBox(
                                    width: 23.82,
                                    height: 14.13,
                                    child: SvgPicture.asset(
                                      Images.sin,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            BluryButtonWidget(
                              width: 62,
                              height: 40,
                              radius: 16,
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  SizedBox(
                                    width: 33.53,
                                    height: 18.18,
                                    child: SvgPicture.asset(
                                      Images.deg,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: Dimensions.paddingSizeDefault,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            BluryButtonWidget(
                              width: 62,
                              height: 62,
                              radius: 16,
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  SizedBox(
                                    width: 42,
                                    height: 48,
                                    child: SvgPicture.asset(Images.ac,
                                        color: const Color(0xFF000000)),
                                  ),
                                ],
                              ),
                            ),
                            BluryButtonWidget(
                              width: 62,
                              height: 62,
                              radius: 16,
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  SizedBox(
                                    width: 21.8,
                                    height: 18,
                                    child: SvgPicture.asset(
                                      Images.vector,
                                      color: const Color(0xFF000000),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            BluryButtonWidget(
                              width: 62,
                              height: 62,
                              radius: 16,
                              boxShadow: [
                                BoxShadow(
                                  color:
                                      const Color(0xFFFFFFFF).withOpacity(0.25),
                                  spreadRadius: 0,
                                  blurRadius: 9,
                                  offset: const Offset(0, 0),
                                ),
                              ],
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  SizedBox(
                                    width: 12,
                                    height: 27,
                                    child: SvgPicture.asset(
                                      Images.divide,
                                      color: const Color(0xFF000000)
                                          .withOpacity(0.7),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            BluryButtonWidget(
                              width: 62,
                              height: 62,
                              radius: 16,
                              boxShadow: [
                                BoxShadow(
                                  color:
                                      const Color(0xFFFFFFFF).withOpacity(0.25),
                                  spreadRadius: 0,
                                  blurRadius: 9,
                                  offset: const Offset(0, 0),
                                ),
                              ],
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  SizedBox(
                                    width: 12,
                                    height: 12,
                                    child: SvgPicture.asset(
                                      Images.multiply,
                                      color: const Color(0xFF000000)
                                          .withOpacity(0.7),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: Dimensions.paddingSizeDefault,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            BluryButtonWidget(
                              width: 62,
                              height: 62,
                              radius: 16,
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  SizedBox(
                                    width: 17,
                                    height: 48,
                                    child: SvgPicture.asset(
                                      Images.seven,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            BluryButtonWidget(
                              width: 62,
                              height: 62,
                              radius: 16,
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  SizedBox(
                                    width: 21,
                                    height: 48,
                                    child: SvgPicture.asset(
                                      Images.eight,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            BluryButtonWidget(
                              width: 62,
                              height: 62,
                              radius: 16,
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  SizedBox(
                                    width: 21,
                                    height: 48,
                                    child: SvgPicture.asset(
                                      Images.nine,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            BluryButtonWidget(
                              width: 62,
                              height: 62,
                              radius: 16,
                              boxShadow: [
                                BoxShadow(
                                  color:
                                      const Color(0xFFFFFFFF).withOpacity(0.25),
                                  spreadRadius: 0,
                                  blurRadius: 9,
                                  offset: const Offset(0, 0),
                                ),
                              ],
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  SizedBox(
                                    width: 19,
                                    height: 48,
                                    child: SvgPicture.asset(
                                      Images.subtract,
                                      color: const Color(0xFF000000)
                                          .withOpacity(0.7),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: Dimensions.paddingSizeDefault,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      BluryButtonWidget(
                                        width: 62,
                                        height: 62,
                                        radius: 16,
                                        child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            SizedBox(
                                              width: 21,
                                              height: 48,
                                              child: SvgPicture.asset(
                                                Images.four,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      BluryButtonWidget(
                                        width: 62,
                                        height: 62,
                                        radius: 16,
                                        child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            SizedBox(
                                              width: 21,
                                              height: 48,
                                              child: SvgPicture.asset(
                                                Images.five,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      BluryButtonWidget(
                                        width: 62,
                                        height: 62,
                                        radius: 16,
                                        child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            SizedBox(
                                              width: 21,
                                              height: 48,
                                              child: SvgPicture.asset(
                                                Images.six,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: Dimensions.paddingSizeDefault,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          print('done--1');
                                          calculationsController
                                              .addCalculationValues(value: 1);
                                              print('done--');
                                        },
                                        child: BluryButtonWidget(
                                          width: 62,
                                          height: 62,
                                          radius: 16,
                                          child: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              SizedBox(
                                                width: 12,
                                                height: 48,
                                                child: SvgPicture.asset(
                                                  Images.one,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      BluryButtonWidget(
                                        width: 62,
                                        height: 62,
                                        radius: 16,
                                        child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            SizedBox(
                                              width: 19,
                                              height: 48,
                                              child: SvgPicture.asset(
                                                Images.two,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      BluryButtonWidget(
                                        width: 62,
                                        height: 62,
                                        radius: 16,
                                        child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            SizedBox(
                                              width: 19,
                                              height: 48,
                                              child: SvgPicture.asset(
                                                Images.three,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: Dimensions.paddingSizeDefault,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      BluryButtonWidget(
                                        width: 144,
                                        height: 62,
                                        radius: 16,
                                        child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            SizedBox(
                                              width: 21,
                                              height: 48,
                                              child: SvgPicture.asset(
                                                Images.zero,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      BluryButtonWidget(
                                        width: 62,
                                        height: 62,
                                        radius: 16,
                                        child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            SizedBox(
                                              width: 4.5,
                                              height: 4.5,
                                              child: SvgPicture.asset(
                                                Images.rectangle,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: Dimensions.paddingSizeLarge,
                            ),
                            Column(
                              children: [
                                BluryButtonWidget(
                                  width: 62,
                                  height: 96,
                                  radius: 16,
                                  boxShadow: [
                                    BoxShadow(
                                      color: const Color(0xFFFFFFFF)
                                          .withOpacity(0.25),
                                      spreadRadius: 0,
                                      blurRadius: 9,
                                      offset: const Offset(0, 0),
                                    ),
                                  ],
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      SizedBox(
                                        width: 23,
                                        height: 48,
                                        child: SvgPicture.asset(
                                          Images.add,
                                          color: const Color(0xFF000000)
                                              .withOpacity(0.7),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: Dimensions.paddingSizeDefault,
                                ),
                                BluryButtonWidget(
                                  width: 62,
                                  height: 96,
                                  radius: 16,
                                  backgroundColor: const Color(0xFF19ACFF),
                                  isLinearGradient: false,
                                  isBorder: false,
                                  boxShadow: [
                                    BoxShadow(
                                      color: const Color(0xFF000000)
                                          .withOpacity(0.25),
                                      spreadRadius: 0,
                                      blurRadius: 4,
                                      offset: const Offset(0, 4),
                                    ),
                                    const BoxShadow(
                                      color: Color(0xFFB0DFFF),
                                      spreadRadius: 0,
                                      blurRadius: 11,
                                      offset: Offset(-3, 4),
                                    ),
                                  ],
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      SizedBox(
                                        width: 25,
                                        height: 48,
                                        child: SvgPicture.asset(
                                          Images.equal,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      );
    });
  }
}

class BluryButtonWidget extends StatefulWidget {
  final Widget? child;
  final double? radius;
  final double? width;
  final double? height;
  final bool isLinearGradient;
  final Color? backgroundColor;
  final List<BoxShadow>? boxShadow;
  final bool isBorder;
  const BluryButtonWidget(
      {this.child,
      this.radius,
      this.width,
      this.height,
      this.isLinearGradient = true,
      this.backgroundColor,
      this.boxShadow,
      this.isBorder = true});

  @override
  State<BluryButtonWidget> createState() => _BluryButtonWidgetState();
}

class _BluryButtonWidgetState extends State<BluryButtonWidget>
    with SingleTickerProviderStateMixin {
  

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width ?? 62,
      height: widget.height ?? 34,
      decoration: BoxDecoration(
          border: widget.isBorder
              ? Border.all(width: 1, color: const Color(0xFFFFFFFF))
              : null,
          borderRadius: BorderRadius.circular(widget.radius ?? 16),
          color: widget.backgroundColor,
          gradient: widget.isLinearGradient
              ? LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    const Color(0xFFFFFFFF).withOpacity(0.85),
                    const Color(0xFFFFFFFF).withOpacity(0.17),
                  ],
                )
              : null,
          boxShadow: widget.boxShadow),
      child: widget.isLinearGradient
          ? ClipRRect(
              borderRadius: BorderRadius.circular(widget.radius ?? 16),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 12.0, sigmaY: 12.0),
                child: Container(
                  color: Colors.black.withOpacity(0.1),
                  child: widget.child,
                ),
              ),
            )
          : widget.child,
    );
     
  }
}
