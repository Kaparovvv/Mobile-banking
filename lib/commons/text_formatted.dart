class TextFormated {
  String bankAccount(String account) {
    String replaceAccount =
        account.replaceFirst(RegExp(r".{12}"), '************');
    String formattedAccount = replaceAccount.replaceAllMapped(
        RegExp(r".{4}"), (match) => "${match.group(0)} ");
    return formattedAccount;
  }

  String recepientAccount(String account) {
    String replaceAccount = account.replaceFirst(RegExp(r".{12}"), '****');
    String formattedAccount = replaceAccount.replaceAllMapped(
        RegExp(r".{4}"), (match) => "${match.group(0)} ");
    return formattedAccount;
  }

  // String recepientAccount(String account) {
  //   String formattedAccount = account.replaceAllMapped(
  //       RegExp(r".{4}"), (match) => "${match.group(0)} ");
  //   return formattedAccount;
  // }
}
