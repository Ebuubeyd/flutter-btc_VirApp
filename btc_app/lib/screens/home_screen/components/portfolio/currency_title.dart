import 'package:btc_app/utils/constants.dart';
import 'package:flutter/material.dart';

class CurrencyTitle extends StatelessWidget {
  final String code;
  final String name;

  const CurrencyTitle({super.key, required this.code, required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          code,
          style: const TextStyle(fontSize: 20),
        ),
        Text(
          name,
          style: TextStyle(
            fontSize: 16,
            color: kSecondaryTextColor,
          ),
        )
      ],
    );
  }
}
