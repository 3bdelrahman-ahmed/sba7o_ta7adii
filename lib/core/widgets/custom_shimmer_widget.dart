import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:spa7o_ta7adii/core/utils/colors.dart';

class CustomShimmer extends StatelessWidget {
  final Widget child;
  final Color baseColor;
  final Color highlightColor;
  final Duration period;

  CustomShimmer({
     required this.child,
    this.highlightColor = const Color(0xff181d3c),
    this.baseColor =ColorsManager.Primary,
    this.period = const Duration(milliseconds: 1200),
  });

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: baseColor,
      highlightColor: highlightColor,
      period: period,
      child: child,
    );
  }
}
