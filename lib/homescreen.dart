
import 'package:alab_technology/auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


class Homescreen extends StatelessWidget {
   Homescreen({super.key});

  final User?  user= Auth().currentUser;

  Future<void> signOut()async{
    await Auth().signOut();
  }
  Widget _title(){
    return const Text('Firebase Auth');
  }

    Widget _userUid(){
    return  Text(user?.email??"User email");
  }


  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          
        ],
      ),
    );
  }
}