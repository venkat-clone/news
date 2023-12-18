import 'package:flutter/material.dart';
import 'package:my_news/configurations/configurations.dart';

class FavoriteNewsCard extends StatelessWidget {
  const FavoriteNewsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.red,
          height: 200,
        ),
        Positioned(
          bottom: kPadding,
          left: kPadding,
          right: kPadding,
          child: Column(
            children: [
              Text(List.generate(10, (index) => ' Title ').join(),
                  style: Theme.of(context).textTheme.titleSmall),
            ],
          ),
        )
      ],
    );
  }
}
