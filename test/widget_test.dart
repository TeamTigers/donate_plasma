import 'package:donateplasma/providers/users.dart';
import 'package:flutter_test/flutter_test.dart';


void main() {
  test('One Classroom Should Be Deleted, One Should Be Added', () {
    final users = Users();
    final initialLength = 10;

    expect(users.userList.length, initialLength);
  });
}
