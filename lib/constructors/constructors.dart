class User {
  final String firstName;

  const User({
    required this.firstName,
  });
}

main() {
  const a = User(firstName: 'Toto');
  const b = User(firstName: 'Toto');

  print(a == b);
}
