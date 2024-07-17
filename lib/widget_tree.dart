// import 'package:flutter/material.dart';
// import 'package:flutter_application/auth.dart';
// import 'package:flutter_application/home_page.dart';
// import 'package:flutter_application/login_register_page.dart';

// class WidgetTree extends StatefulWidget {
//   WidgetTree({super.key});

//   @override
//   State<WidgetTree> createState() => _widgetTreeState();
// } 


// class _widgetTreeState extends State<WidgetTree> {

// Widget build(BuildContext context) { 
//   return StreamBuilder(
//     stream: Auth().authStateChange,
//     builder: (context, snapshot) {
//       if(snapshot.hasData){
//         return HomePage();
//       }else{
//         return LoginPage();
//       }
//     },
//   );
// }
// }