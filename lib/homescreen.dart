
// import 'package:alab_technology/auth.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';


// class Homescreen extends StatelessWidget {
//    Homescreen({super.key});

//   final User?  user= Auth().currentUser;

//   Future<void> signOut()async{
//     await Auth().signOut();
//   }
//   Widget _title(){
//     return const Text('Firebase Auth');
//   }

//     Widget _userUid(){
//     return  Text(user?.email??"User email");
//   }

//   Widget _signOutButton(){
//     return ElevatedButton(onPressed: signOut, 
//     child: Text('Sign out'));
//   }


//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold(
//       appBar:AppBar(
//         title: _title(),
//       ) ,
//       body: Container(
//         height: double.infinity,
//         width: double.infinity,
//         child: Padding(
//           padding: const EdgeInsets.all(20),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               _userUid(),
//               _signOutButton(),
//             ],
//           ),
//         ),
//       )
//       );
  
//   }
// }