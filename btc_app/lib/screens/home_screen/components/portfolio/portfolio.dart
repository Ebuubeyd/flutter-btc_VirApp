import 'package:btc_app/mocks/mock_portfolio.dart';
import 'package:btc_app/screens/home_screen/components/portfolio/portfolio_item.dart';
import 'package:flutter/material.dart';

class Portfolio extends StatelessWidget {
  const Portfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Text(
            'Benim Portfolyom',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          height: 24,
        ),
        SizedBox(
          height: 160,
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (_, __) => const SizedBox(
              width: 24,
            ),
            itemCount: MockPortfolio.data.length,
            itemBuilder: (_, index) => PortfolioItem(
              currency: MockPortfolio.data[index],
            ),
          ),
        ),
      ],
    );
  }
}
