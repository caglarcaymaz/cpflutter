class User{
  String? name;
  String? profilePhoto;
  String? email;
  String? uid;

User(
  {
    required this.name,
    required this.email,
    required this.uid,
    required this.profilePhoto,

  }
);
Map<String,dynamic> toJson=>{
  "name": name,
  "profilephoto: profilephoto"
}
}