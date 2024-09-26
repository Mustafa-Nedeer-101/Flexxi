import 'package:flexi/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class CustomGridLayout extends StatelessWidget {
  const CustomGridLayout(
      {super.key,
      required this.itemCount,
      this.mainAxisExtent = 288,
      required this.itemBuilder});

  final int itemCount;
  final double mainAxisExtent;
  final Widget? Function(BuildContext, int) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: itemCount,
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisExtent: mainAxisExtent,
        mainAxisSpacing: CSizes.gridViewSpacing,
        crossAxisSpacing: CSizes.gridViewSpacing,
      ),
      itemBuilder: itemBuilder,
    );
  }
}
