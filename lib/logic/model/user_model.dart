class UserModel {
  final String accessToken;
  final String name;
  final String phone;
  final String email;
  final int id;
  final String image;



  UserModel({
    required this.accessToken,
    required this.email,
    required this.id,
    required this.name,
    required this.image,
    required this.phone,
  });

  factory UserModel.fromJson(Map<String, dynamic> jsonMap) {
    // UserInfo userInfo = UserInfo.fromJson(jsonMap["user"]);
    return UserModel(
      accessToken: jsonMap["token"],
      email: jsonMap['email'],
      id: jsonMap['id'],
      image: jsonMap['image'],
      name: jsonMap['name'],
      phone: jsonMap['phone'],
    );
  }
  Map<String, dynamic> toJson() => {
    "token": accessToken,
    'id': id,
    'email': email,
    'image': image,
    'phone': phone,
    'name': name,
  };
}
