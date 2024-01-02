import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:happy_food/Pages/Home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyBWYs7DCgTj0gXwbSqG2KMtl-9cACY4hzA",
          appId: "1:346466899535:android:966b08917a63a1b350fc3a",
          messagingSenderId: "346466899535",
          projectId: "happyfoodapp-f3dfe"));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Home_Page(),
      debugShowCheckedModeBanner: false,
    );
  }
}

//final _db = FirebaseFirestore.instance;
// void getName() async {
//   final userCollection = await _db.collection("user").get();
//   for(DocumentSnapshot snap in userCollection.docs){
//     print("Name: ${snap["name"]}");
//   }
// // Map<String, dynamic> user = {
// //     'name': 'John Doe',
// //     'email': 'johndoe@example.com',
// //     'age': 30,
// //   };
// //   userCollection.add(user);
// }
