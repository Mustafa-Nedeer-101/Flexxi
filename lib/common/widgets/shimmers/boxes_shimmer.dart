import 'package:flexi/common/widgets/shimmers/shimmer.dart';
import 'package:flexi/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class CustomBoxesShimmer extends StatelessWidget {
  const CustomBoxesShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(child: CustomShimmerEffect(width: 150, height: 110)),
            SizedBox(
              width: CSizes.spaceBtwItems,
            ),
            Expanded(child: CustomShimmerEffect(width: 150, height: 110)),
            SizedBox(
              width: CSizes.spaceBtwItems,
            ),
            Expanded(child: CustomShimmerEffect(width: 150, height: 110)),
          ],
        )
      ],
    );
  }
}
