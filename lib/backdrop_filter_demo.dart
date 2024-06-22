import 'dart:ui';

import 'package:flutter/material.dart';
import 'demo_page.dart';

class BackdropFilterDemo extends DemoPage {
  const BackdropFilterDemo({Key? key})
      : super('Backdrop filter filter demo', key: key);

  @override
  Widget build(BuildContext context) {
    Widget comparingWidget = super.build(context);
    return Stack(
      children: [
        comparingWidget,
        Center(
          child: SizedBox(
            height: 400,
            width: 200,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Container(
                color: Colors.blue,
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                  child: const SizedBox.expand(),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget topWidget() {
    return regularWidget();
  }

  @override
  Widget bottomWidget() {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(50)),
      child: platformViewWidget(),
    );
  }
}

class RectClipper extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    // TODO: implement getClip
    return const Rect.fromLTWH(100, 100, 200, 500);
  }

  @override
  bool shouldReclip(covariant CustomClipper<Rect> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}
