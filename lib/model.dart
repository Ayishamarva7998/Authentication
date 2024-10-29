class UserModel{
  String? name;
  String? email;
  String? uid;
 
  UserModel({
    this.email,
   
    this.name, required String uid, String? phone,
   
  });
 factory UserModel.fromJson(Map<String,dynamic> json){
    return UserModel(
      name: json['name'],
      email: json['email'], uid: '',
      
    
    );
  }

  Map<String,dynamic> toJson(){
    return {
      'name':name,
      'email':email,
      'uid':uid,
      
    };
  }
}