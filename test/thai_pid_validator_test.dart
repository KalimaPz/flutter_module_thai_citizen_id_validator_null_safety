import 'package:flutter_test/flutter_test.dart';
import 'package:thai_pid_validator/thai_pid_validator.dart';

void main() {
  test('checksum pid', () {
    final validator = ThaiPidValidator(errMsg: 'ID Checksum Invalid');
    expect(validator.validate('123456789'), 'ID Checksum Invalid',reason: 'Digit Not Correct');
    expect(validator.validate('1891821273123'), 'ID Checksum Invalid',reason: "Invalid Checksum");
    expect(validator.validate('1234567890121'), null,reason: 'Checksum Valid');
  });
}
