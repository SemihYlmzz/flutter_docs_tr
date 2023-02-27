import '../../core.dart';

class StringValidations {
  final _filter = ProfanityFilter();

  bool emailValidator(String email) {
    final emailValid = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
    ).hasMatch(email);
    return emailValid;
  }

  bool passwordValidator(String password) {
    if (password.length > 5 && password.length < 30) {
      return true;
    }
    return false;
  }

  bool usernameValidator(String name) {
    final hasProfanity = _filter.hasProfanity(name);
    final hasNumOrChar = RegExp(r'^[a-zA-Z]*$').hasMatch(name);
    if (name.length > 2 &&
        name.length < 16 &&
        !name.contains(' ') &&
        hasNumOrChar &&
        !hasProfanity) {
      return true;
    }
    return false;
  }
}
