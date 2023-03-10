import 'package:flutter/material.dart';
import 'package:yalla/theme.dart';

class ProductTile extends StatelessWidget {
  const ProductTile({
    super.key,
    required this.imageName,
    required this.category,
    required this.title,
    required this.price,
    required this.onTap,
  });

  final String imageName;
  final String category;
  final String title;
  final String price;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(
          left: kDefaultMargin,
          right: kDefaultMargin,
          bottom: kDefaultMargin,
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                'assets/$imageName',
                width: 120,
                height: 120,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    category,
                    style: kTextStyleSecondary.copyWith(
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    title,
                    style: kTextStylePrimary.copyWith(
                      fontSize: 16,
                      fontWeight: semibold,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 6),
                  Text(
                    '\$$price',
                    style: kTextStylePrice.copyWith(
                      fontWeight: medium,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
