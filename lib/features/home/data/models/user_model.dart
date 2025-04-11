class UserModel{
  const UserModel({
    required this.name,
    required this.email,
    required this.phone,
    required this.profilePic,
  });
  final String name;
  final String email;
  final String phone;
  final String? profilePic;
}