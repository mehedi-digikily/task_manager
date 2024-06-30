import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BodyBackground extends StatelessWidget {
  const BodyBackground({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [ SvgPicture.network(
        'https://raw.githubusercontent.com/rupomsoft/Flutter-Batch/7e8e418f34330cac6f55cc14bb4411891095b9f6/Flutter/Source%20Code/25%20Task%20manager%20project/ui_assets/background.svg',
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.cover,
      ),
        child
    ]
    );
  }
}
