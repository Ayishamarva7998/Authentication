
// import 'package:alab_technology/auth.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

// class login extends StatefulWidget {
//   @override
//   State<login> createState() => _loginState();
// }

// class _loginState extends State<login> {
//   String? errorMessage ='';

//   bool isLogin =true;

//   final TextEditingController _controllerEmail=TextEditingController();

//   final TextEditingController _controllerPassword=TextEditingController();

//   Future<void> signInWithEmailAndPassword()async{
//     try {
//       await Auth().signInWithEmailAndPassword(
//          email:_controllerEmail.text,
//         password:_controllerPassword.text,
//       );
//     } on FirebaseAuthException catch(e){
//       setState((){
//         errorMessage=e.message;
//       });
//     }
//   }
//   Future<void> createUserWithEmailAndPassword()async{
//     try{
//       await Auth().createUserWithEmailAndPassword(
//         email: _controllerEmail.text, 
//         password: _controllerPassword.text,);
//     }on FirebaseAuthException catch(e){
//         errorMessage=e.message;
//     }
//   }
//  Widget _title(){
//   return Text('Firebase Auth');
//  }
//  Widget _entryField(
//     String title,
//    TextEditingController controller,
//  ){
//   return TextField(
//     controller: controller,
//     decoration: InputDecoration(
//       labelText: title,
//     ),
//   );
//  }
//  Widget _errorMessage(){
//   return Text(errorMessage ==''?'':'Human ? $errorMessage');
//  }
//  Widget _submitButton(){
//   return ElevatedButton(
//     onPressed:isLogin ? signInWithEmailAndPassword : createUserWithEmailAndPassword ,
//      child: Text(isLogin ? 'Login':'Register'));
//  }
//  Widget _loginOrRegisterButton(){
//   return TextButton(
//     onPressed: (){},
//      child: Text(''));
//  }
 
//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(

//     );
//   }
// }