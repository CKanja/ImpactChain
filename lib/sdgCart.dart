import 'package:flutter/material.dart';

import 'models/sdgs.dart';

class sdgCard extends StatelessWidget {
  final SDG sdg;
  final VoidCallback press;

  const sdgCard({
    super.key,
    required this.sdg,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        padding: EdgeInsets.all(20),
        // height: 180,
        // width: 160,
        decoration: BoxDecoration(
            color: sdg.color, borderRadius: BorderRadius.circular(16)),
        child: Hero(tag: "${sdg.sdgNum}", child: Image.asset(sdg.image)),
      ),
    );
  }
}
