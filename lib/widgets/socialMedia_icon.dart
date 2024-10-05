import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

class SocialmediaIcon extends StatelessWidget {
  final String mediaIcon;

  const SocialmediaIcon({super.key, required this.mediaIcon});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 35.0,
        height: 35.0,
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 204, 239, 244),
            borderRadius: BorderRadius.circular(50)),
        child: SvgPicture.asset(
          mediaIcon,
          height: 25.0,
          width: 25.0,
        ));
  }
}
