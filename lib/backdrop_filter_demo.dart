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
        Positioned(
          top: 370,
          child: Text(' long test textlong test textlong test text'),
        ),
        comparingWidget,
        // Center(
        //   child: SizedBox(
        //     height: 400,
        //     width: 200,
        //     child: Container(
        //       decoration: BoxDecoration(border: Border.all()),
        //       child: ClipRRect(
        //         borderRadius: BorderRadius.circular(100),
        //         child: Container(
        //           color: Colors.white10,
        //           child: BackdropFilter(
        //             filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        //             child: const SizedBox.expand(),
        //           ),
        //         ),
        //       ),
        //     ),
        //   ),
        // ),
      ],
    );
  }

  @override
  Widget topWidget() {
    return regularWidget();
  }

  @override
  Widget bottomWidget() {
    return Stack(
      alignment: Alignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(150),
          child: platformViewWidget(),
        ),
        BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Container(
            height: 100,
            width: 100,
            color: Colors.blueAccent,
          ),
        )
      ],
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
