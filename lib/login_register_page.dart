// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_application/auth.dart';

// class LoginPage extends StatefulWidget {
//   const LoginPage({super.key});

//   @override
//   State<LoginPage> createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {

//   String? errorMessage = '';
//   bool isLogin = true;

//   final TextEditingController _controllerEmail = TextEditingController();
//   final TextEditingController _controllerPassword = TextEditingController();

//   Future<void> signInWithEmailAndPassword() async {
//     try {
//       await Auth().signInWithEmailAndPassword(
//         email: _controllerEmail.text,
//         password: _controllerPassword.text
//       );
//     } on FirebaseAuthException catch (e) {
//       setState(() {
//         errorMessage = e.message;
//       });
//     }
//   }

//   Future<void> createUserWithEmailAndPassword() async {
//     try {
//       await Auth().createUserWithEmailAndPassword(
//         email: _controllerEmail.text,
//         password: _controllerPassword.text
//       );
//     } on FirebaseAuthException catch (e) {
//       setState(() {
//         errorMessage = e.message;
//       });
//     }
//   }

//   Widget _title() {
//     return const Text("Firebase Auth");
//   }

//   Widget _entryField(
//     String title,
//     TextEditingController controller
//   ) {
//     return TextField(
//       controller: controller,
//       decoration: InputDecoration(labelText: title),
//     );
//   }

//   Widget _errorMessage() {
//     return Text(
//       errorMessage == '' ? '': '$errorMessage'
//     );
//   }

//   Widget _submitButton() {
//     return ElevatedButton(
//       onPressed: 
//       isLogin? signInWithEmailAndPassword : createUserWithEmailAndPassword, 
//       child: Text(isLogin ? 'Login' : 'Register'));
//   }

//    Widget _loginOrRegisterButton() {
//     return TextButton(
//       onPressed: () => {
//         setState((){
//           isLogin = !isLogin;
//         })
//       }, 
//       child: Text(isLogin ? 'Register instead' : 'Login instead'));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(body: Column(children: [
//       _entryField('Email', _controllerEmail),
//       _entryField('Password', _controllerPassword),
//       _errorMessage(),
//       _submitButton(),
//       _loginOrRegisterButton()
//     ]),);
//   }
// }