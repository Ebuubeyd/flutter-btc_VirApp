import 'package:btc_app/mocks/mock_balance.dart';
import 'package:btc_app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'balance_background.dart';

class BalanceCard extends StatelessWidget {
  const BalanceCard({super.key});

  Widget balanceText() {
    return Padding(
      padding: const EdgeInsets.all(28),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Bakiye',
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(height: 4),
          Text(
            NumberFormat.simpleCurrency().format(MockBalance.data.last),
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Spacer(),
          const Text(
            'Günlük Kaar',
            style: TextStyle(fontSize: 18),
          ),
          const SizedBox(
            height: 4,
          ),
          const Text(
            '\$201.12',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget profitPercent() {
    return Positioned(
      right: 28,
      bottom: 28,
      child: Container(
        padding: const EdgeInsets.fromLTRB(6, 6, 8, 6),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: kBackgroundColor.withOpacity(0.4),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: const [
            Icon(
              FontAwesomeIcons.caretUp,
              size: 16,
            ),
            SizedBox(
              width: 2,
            ),
            Text('+5.2'),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    //başlangıç olarak Stateless Widget oluşturuyoruz
    return Padding(
      //boşluk döndürüp Simetrik boşluk ayarlıyoruz
      padding: const EdgeInsets.symmetric(
          horizontal:
              24), //const sayesinde sabit iç boşluğumuzu 24 piksel olarak ayarlıyoruz
      child: SizedBox(
        //bir kutucuk oluşturuyoruz
        height: 200, //yüksekliğine 200 piksel veriyoruz
        child: Stack(
          //stack widget i kullanarak Yapacağımız kart görüntüsünün üzerine Bakiye bilgileri tarzı şeylerin gelmesini sağlıyoruz
          children: [
            BalanceBackground(), //balanceBackground Adlı metodu çağırıyoruz
            balanceText(), //balanceText adlı widgeti çağırıyoruz
            profitPercent(), //profitPercent Adlı widgeti çekiyoruz
          ],
        ),
      ),
    );
  }
}
