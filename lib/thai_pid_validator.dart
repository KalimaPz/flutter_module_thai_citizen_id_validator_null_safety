library thai_pid_validator;

class ThaiPidValidator {
  String validatedMsg = "";
  String errorMsg ="";
  ThaiPidValidator({required String errMsg}) {
    errorMsg = errMsg;
  }
  String? validate(String citizenid) {
    final pid = citizenid.replaceAll("-", "");
    if (pid.length == 13) {
      const int valueOfDigit = 13;
      int sum = 0;
      for (var idx = 0; idx < pid.length - 1; idx++) {
        sum += int.parse(pid[idx]) * (valueOfDigit - idx);
      }
      final String checkDigit = (11 - (sum % 11)).toString().split("").last;
      final List<String> splitedPid = pid.split("");

      if (splitedPid.last == checkDigit) {
        return null;
      } else {
        
        return errorMsg;
      }
    } else {
      return errorMsg;
    }
  }
  bool isDigitCorrect(String citizenid) {
    if(citizenid.length == 13) {
      return true;
    } else {
      return false;
    }
  }
}
