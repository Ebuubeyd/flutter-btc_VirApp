import 'package:btc_app/utils/constants.dart';
import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  final Widget icon;
  const CustomIcon({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: const LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.bottomRight,
          colors: [
            kPrimaryColor,
            kSecondaryTextColor,
          ],
        ),
        boxShadow: const [
          BoxShadow(
            offset: Offset(1, -1),
            color: Colors.white38,
          ),
          BoxShadow(
            offset: Offset(-1, 1),
            color: Color(0xFF182233),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: icon,
      ),
    );
  }
}
