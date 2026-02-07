class Member {
  final String id;
  final String name;
  final String email;
  final String createdAt;

  Member({required this.id, required this.name, required this.email, required this.createdAt});

  factory Member.fromJson(Map<String, dynamic> json) {
    return Member(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      createdAt: json['created_at'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'created_at': createdAt,
    };
  }
}