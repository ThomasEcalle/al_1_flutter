void main() async {
  print('Coucou');
  try {
    final int number = await getIntFromNetwork();
    final String myString = await getStringFromInt(number);
    print('La fin: $myString');
  } on StringException catch (exception) {
    print('StringException: $exception');
  } on IntegerException catch (exception) {
    print('IntegerException: $exception');
  } catch (error) {
    print('OUPS');
  }
}

Future<int> getIntFromNetwork() async {
  //throw IntegerException();
  return Future.delayed(const Duration(seconds: 1), () {
    return 42;
  });
}

Future<String> getStringFromInt(int value) {
  throw StringException();
  return Future.delayed(const Duration(seconds: 1), () {
    return 'Yo $value';
  });
}

class MyExceptions implements Exception {}

class IntegerException extends MyExceptions {}

class StringException extends MyExceptions {}
