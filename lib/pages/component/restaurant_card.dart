import 'package:baratie_resto_app/core/core.dart';
import 'package:flutter/material.dart';

class RestaurantCard extends StatelessWidget {
  const RestaurantCard({
    required this.imgUrl,
    required this.name,
    required this.location,
    required this.rate,
    Key? key,
  }) : super(key: key);

  final String imgUrl;
  final String name;
  final String location;
  final double rate;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(Dimens.dp8),
          child: Image.network(
            imgUrl,
            width: Dimens.dp125,
          ),
        ),
        const SizedBox(width: Dimens.dp12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Body1(
              text: name,
            ),
            const SizedBox(height: Dimens.dp4),
            Row(
              children: [
                const Icon(
                  Icons.location_on,
                  size: Dimens.dp16,
                ),
                const SizedBox(width: Dimens.dp4),
                Body2(
                  text: location,
                ),
              ],
            ),
            const SizedBox(height: Dimens.dp16),
            Row(
              children: [
                const Icon(
                  Icons.star,
                  size: Dimens.dp16,
                  color: Colors.orange,
                ),
                const SizedBox(width: Dimens.dp6),
                Body2(
                  text: rate.toString(),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
