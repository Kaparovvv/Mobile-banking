class ValidatesHelper {
  static passwordValidate(String value) {
    if (value.isNotEmpty) {
      if (RegExp("(?:[a-z])").hasMatch(value)) {
        if (RegExp("(?:[A-Z])").hasMatch(value)) {
          if (RegExp("(?:[0-9])").hasMatch(value)) {
            if (RegExp(".{8,}").hasMatch(value)) {
              return null;
            } else {
              return 'Длина пароля должна быть не меньше 8 символов';
            }
          } else {
            return 'Пароль должен содержать цифры';
          }
        } else {
          return 'Пароль должен содержать буквы верхнего регистра';
        }
      } else {
        return 'Пароль должен содержать буквы нижнего регистра';
      }
    } else {
      return 'Введите пароль, пожалуйста';
    }
  }

  static titleValidate(String value, String valueType) {
    if (value.isEmpty) {
      return 'Введите $valueType, пожалуйста';
    } else {
      return null;
    }
  }

  static nameValidate(String value, String valueType) {
    if (value.isEmpty) {
      return 'Введите $valueType, пожалуйста';
    } else if (!RegExp("^[a-zA-Z]*\$").hasMatch(value)) {
      return "Некорректно";
    } else {
      return null;
    }
  }

  static phoneNumber(String value, String valueType) {
    final formattedValue =
        value.replaceAll(RegExp(r'\D'), "").replaceFirst(r'7', '8');
    if (formattedValue.isEmpty) {
      return 'Введите $valueType, пожалуйста';
    } else if (formattedValue.length < 11) {
      return 'Неправильный номер телефона';
    } else {
      return null;
    }
  }

  static identityNumberValidate(String value, String valueType) {
    if (value.isNotEmpty) {
      if (RegExp(".{14,}").hasMatch(value)) {
        return null;
      } else {
        return 'Введите корректный ИНН';
      }
    } else {
      return 'Введите $valueType, пожалуйста';
    }
  }
}
