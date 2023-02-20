import 'package:btc_app/mocks/mock_favorites.dart';
import 'package:btc_app/models/currency.dart';
import 'package:btc_app/screens/home_screen/components/balance_card/favorites/favorites_item.dart';
import 'package:btc_app/utils/constants.dart';
import 'package:flutter/material.dart';

class Favorites extends StatelessWidget {
  const Favorites({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Favorilerim',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: 24,
          ),
          for (final currency in MockFavorites.data) ...[
            FavoritesItem(currency: currency),
            const SizedBox(
              height: 16,
            )
          ]
        ],
      ),
    );
  }
}
