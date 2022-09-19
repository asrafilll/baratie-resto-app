import 'package:baratie_resto_app/core/core.dart';
import 'package:baratie_resto_app/model/restaurant.dart';
import 'package:baratie_resto_app/pages/component/restaurant_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static const route = '/homepage';
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Headline6(
          text: 'Baratie Restaurant',
          color: Colors.white,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(
          Dimens.dp16,
        ),
        child: Column(
          children: [
            const HeadingSection(),
            const SizedBox(height: Dimens.dp40),
            FutureBuilder<String>(
                future: DefaultAssetBundle.of(context)
                    .loadString('assets/data/local_restaurants.json'),
                builder: (context, snapshot) {
                  final List<Restaurant> restaurants =
                      parseRestaurant(snapshot.data);
                  return Expanded(
                    child: ListView.separated(
                      itemBuilder: (context, index) => RestaurantCard(
                        imgUrl:
                            'https://restaurant-api.dicoding.dev/images/medium/14',
                        name: 'Restaurant 1',
                        location: 'Medan',
                        rate: 4.6,
                      ),
                      separatorBuilder: (context, index) =>
                          SizedBox(height: Dimens.dp16),
                      itemCount: 20,
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}

class HeadingSection extends StatelessWidget {
  const HeadingSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Headline6(
              text: 'Find Your Favorite Food',
            ),
            Body2(
              text: 'From your nearby restaurant',
            )
          ],
        ),
        Row(
          children: [
            Body2(
              text: 'See All',
              color: Colors.grey[500],
            ),
            const SizedBox(width: Dimens.dp8),
            Icon(
              Icons.chevron_right,
              color: Colors.grey[500],
            )
          ],
        )
      ],
    );
  }
}
