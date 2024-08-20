import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class StopCock extends StatefulWidget {
  const StopCock({super.key});

  @override
  State<StopCock> createState() => _StopCockState();
}

class _StopCockState extends State<StopCock> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {},
        child: Container(
          margin: const EdgeInsets.all(10.0),
          alignment: Alignment.centerLeft,
          width: 130,
          height: 130,
          color: Colors.red,
          child: Stack(
            fit: StackFit.expand,
            alignment: Alignment.center,
            children: [
              SizedBox(
                child: SvgPicture.asset(
                  "assets/pipe.svg",
                ),
              ),
              SizedBox(
                child: SvgPicture.asset(
                  "assets/handle.svg",
                ),
              ),
            ],
          ),
        ));
  }
}
