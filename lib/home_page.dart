// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_application/auth.dart';

// class HomePage extends StatelessWidget {
//   HomePage({super.key});

//   final User? user = Auth().currentUser;

//   Future<void> signOut() async {
//     await Auth().signOut();
//   }

//   Widget _title() {
//     return const Text("Firebase Auth");
//   }

//   Widget _userUid() {
//     return Text(user?.email ?? 'user email');
//   }

//   Widget _signOutButton() {
//     return ElevatedButton(onPressed: signOut, child: Text("Sign Out"));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(title: _title()),
//         body: Column(children: [_userUid(), _signOutButton()]));
//   }
// }
