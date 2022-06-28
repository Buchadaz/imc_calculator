// ignore: depend_on_referenced_packages
import '../constant/app_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/foundation/key.dart';

class RightBar extends StatelessWidget {
  final double barWidht;
  const RightBar({Key? key, required this.barWidht}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 25,
          width: barWidht,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
              color: accentHexColor),
        )
      ],
    );
  }
}
