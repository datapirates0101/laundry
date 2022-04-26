class User {
  final String name;
  final String num;
  final String email;
  final String uid;

  const User({
    required this.name,
    required this.num,
    required this.email,
    required this.uid,
  });

  Map<String, dynamic> toJason() => {
        "name": name,
        "num": num,
        "email": email,
        "uid": uid,
      };
}
