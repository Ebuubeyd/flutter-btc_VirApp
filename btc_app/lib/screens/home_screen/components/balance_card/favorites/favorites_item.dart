import 'package:btc_app/components/custom_icon.dart';
import 'package:btc_app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../models/currency.dart';

class FavoritesItem extends StatelessWidget {
  final Currency currency;
  const FavoritesItem({super.key, required this.currency});

  Widget title() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          currency.code,
          style: const TextStyle(
            fontSize: 20,
          ),
        ),
        Text(
          currency.name,
          style: TextStyle(
            fontSize: 16,
            color: kSecondaryTextColor,
          ),
        )
      ],
    );
  }

  Widget price() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          currency.currentPriceString,
          style: const TextStyle(fontSize: 16),
        ),
        const SizedBox(
          height: 4,
        ),
        Row(
          children: [
            Icon(
              currency.priceChange >= 0
                  ? FontAwesomeIcons.caretUp
                  : FontAwesomeIcons.caretDown,
              size: 16,
              color: kSecondaryTextColor,
            ),
            const SizedBox(
              width: 2,
            ),
            Text(
              currency.priceChangeString,
              style: const TextStyle(
                color: kSecondaryTextColor,
              ),
            )
          ],
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        height: 74,
        color: kPrimaryColor,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                children: [
                  CustomIcon(icon: currency.icon),
                  const SizedBox(width: 16),
                  title(),
                  const Spacer(),
                  price(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
