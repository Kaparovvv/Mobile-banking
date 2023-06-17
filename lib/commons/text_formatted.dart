class TextFormated {
  static String bankAccount(String account) {
    account = account.replaceAll(' ', '');
    String replaceAccount = account.replaceFirst(
      RegExp(r".{12}"),
      '************',
    );
    String formattedAccount = replaceAccount.replaceAllMapped(
        RegExp(r".{4}"), (match) => "${match.group(0)} ");
    return formattedAccount;
  }

  static String recepientAccount(String account) {
    String replaceAccount = account.replaceFirst(RegExp(r".{12}"), '****');
    String formattedAccount = replaceAccount.replaceAllMapped(
        RegExp(r".{4}"), (match) => "${match.group(0)} ");
    return formattedAccount;
  }
}
