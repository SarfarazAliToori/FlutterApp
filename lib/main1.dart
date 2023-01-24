// import 'dart:ffi';

// import 'package:flutter/material.dart';

// // void main() {
// //   runApp(MyApp());
// // }

// // class MyApp extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       home: Scaffold(
// //         appBar: AppBar(
// //           title: const Text(
// //             "Welcome To Flutter1",
// //             textAlign: TextAlign.center,
// //           ),
// //         ),
// //         bottomNavigationBar: BottomAppBar(
// //           color: Colors.blue,
// //           child: IconButton(
// //             onPressed: () {
// //               print("icon pressed");
// //             },
// //             icon: const Icon(Icons.accessibility_new_sharp),
// //             color: Colors.red,
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }

// //////////////////////////
// ///

// void main(List<String> args) {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   bool myNewButton = false;

//   String myText = "Hello";

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           centerTitle: true,
//           title: const Text("Hello flutter"),
//         ),
//         body: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           // mainAxisAlignment: MainAxisAlignment.end,
//           children: [
//             const Text(
//               "First line",
//             ),
//             const Text("Second Line"),
//             Container(
//               child: Row(
//                 // crossAxisAlignment: CrossAxisAlignment.end,
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: const [
//                   Text("First line"),
//                   Text("Second Line"),
//                 ],
//               ),
//             ),
//             Container(
//               color: Colors.red,
//               height: 200,
//               child: Row(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: const [
//                   Text("data"),
//                 ],
//               ),
//             ),
//             Container(
//               height: 50,
//               color: Colors.amberAccent,
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   TextButton(
//                       onPressed: () {}, child: const Text("Text Button")),
//                 ],
//               ),
//             ),
//             MaterialButton(
//               onPressed: () {},
//               color: Colors.blue,
//               child: const Text("Material Button"),
//             ),
//             OutlinedButton(
//               onPressed: () {},
//               child: const Text("outline Button"),
//             ),
//             IconButton(
//               onPressed: () {},
//               icon: const Icon(Icons.cloud_circle_rounded),
//             ),
//             Container(
//               height: 50,
//               width: 200,
//               color: Colors.green,
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [Text("myText")],
//               ),
//             ),
//           ],
//         ),
//         bottomNavigationBar: BottomAppBar(
//           color: Colors.blue,
//           // child: IconButton(
//           //   onPressed: () {
//           //     print("Home icon pressed");
//           //   },
//           //   icon: const Icon(
//           //     Icons.home,
//           //     color: Colors.red,
//           //   ),
//           // ),
//           child: Container(
//             child: Row(
//               children: [],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
