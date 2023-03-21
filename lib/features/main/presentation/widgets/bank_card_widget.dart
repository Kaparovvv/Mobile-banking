import 'package:flutter/material.dart';
import 'package:my_family_flutter/core/exports/exports.dart';

class BankCardWidget extends StatelessWidget {
  const BankCardWidget({
    super.key,
    required this.bankAccount,
    required this.balance,
  });

  final String bankAccount;
  final double balance;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.height * 0.2,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: const LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          colors: [
            ThemeHelper.colorA0D39F,
            ThemeHelper.color08B89D,
            ThemeHelper.color5061FF,
            ThemeHelper.color105BFB,
          ],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            TextHelper.mobileBanking,
            style: TextStyleHelper.f20w600.copyWith(
              color: ThemeHelper.white,
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            _bankAccount(bankAccount),
            style: TextStyleHelper.f18w500.copyWith(
              color: ThemeHelper.white,
              fontWeight: FontWeight.w900,
              letterSpacing: 1.5,
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  balance.toString(),
                  style: TextStyleHelper.f15w900.copyWith(
                    color: ThemeHelper.white,
                    fontWeight: FontWeight.w900,
                    letterSpacing: 1.5,
                  ),
                ),
                const SizedBox(width: 5),
                Image.asset(
                  IconHelper.tenge,
                  width: context.width * 0.0556,
                  height: context.height * 0.0246,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  String _bankAccount(String account) {
    String replaceAccount =
        account.replaceFirst(RegExp(r".{12}"), '************');
    String formattedAccount = replaceAccount.replaceAllMapped(
        RegExp(r".{4}"), (match) => "${match.group(0)} ");
    return formattedAccount;
  }
}
