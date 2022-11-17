class User {
  final String firstName;

  const User({
    required this.firstName,
  });
}

main() {
  final toto = 42;
  const a = User(firstName: 'Toto');
  const b = User(firstName: 'Toto');

  print(a == b);
}
