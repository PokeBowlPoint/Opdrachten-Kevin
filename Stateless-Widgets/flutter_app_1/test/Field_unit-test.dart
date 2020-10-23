import 'package:flutter_app_1/main.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {

  test('Leeg veld geeft niks terug', (){

    var result = FieldeenValidator.validate('');
    expect(result, 'Field een kan\' niet leeg zijn');
  });

  test('non-leeg veld returns null', (){

    var result = FieldeenValidator.validate('Field voor Unit Test');
    expect(result, null);
  });




  test('Leeg veld geeft niks terug', (){

    var result = FieldtweeValidator.validate('');
    expect(result, 'Field twee kan\' niet leeg zijn');
  });

  test('non-leeg veld returns null', (){

    var result = FieldtweeValidator.validate('Nog een field voor Unit Test');
    expect(result, null);
  });

}