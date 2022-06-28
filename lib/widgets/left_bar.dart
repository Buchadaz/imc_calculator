// ignore: depend_on_referenced_packages
import '../constant/app_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/foundation/key.dart';

class LeftBar extends StatelessWidget {
  final double barWidht;
  LeftBar({Key? key, required this.barWidht}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          height: 25,
          width: barWidht,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20)),
              color: accentHexColor),
        )
      ],
    );
  }
}
