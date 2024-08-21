import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class StopCock extends StatefulWidget {
  const StopCock({super.key});

  @override
  State<StopCock> createState() => _StopCockState();
}

class _StopCockState extends State<StopCock>
    with SingleTickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(duration: const Duration(milliseconds: 300), vsync: this);
    animation = Tween<double>(begin: 0, end: 1/4).animate(controller);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          controller.isForwardOrCompleted
              ? controller.reverse()
              : controller.forward();
        },
        behavior: HitTestBehavior.translucent,
        child: Container(
          margin: const EdgeInsets.all(10.0),
          alignment: Alignment.centerLeft,
          child: Stack(
            alignment: Alignment.center,
            children: [
              SvgPicture.asset(
                "assets/pipe.svg",
                height: 110,
                width: 110,
              ),
              RotationTransition(
                turns: animation,
                child: SvgPicture.asset(
                  "assets/handle.svg",
                  height: 120,
                  width: 120,
                ),
              ),
            ],
          ),
        ));
  }
}
