import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:http/http.dart' as http;
import 'package:get/get_connect/http/src/request/request.dart';

class AuthService {
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  GoogleSignIn googleSignIn = GoogleSignIn();
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  Future<User?> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      if (googleUser != null) {
        final GoogleSignInAuthentication googleAuth =
            await googleUser.authentication;
        final credential = GoogleAuthProvider.credential(
          accessToken: googleAuth.accessToken,
          idToken: googleAuth.idToken,
        );
        UserCredential userCredential =
            await firebaseAuth.signInWithCredential(credential);
        DocumentSnapshot userExist = await firestore
            .collection('users')
            .doc(userCredential.user!.uid)
            .get();
        if (userExist.exists) {
          print("User Already Exists in Database");
        } else {
          await firestore
              .collection('users')
              .doc(userCredential.user!.uid)
              .set({
            'uid': userCredential.user!.uid,
            'email': userCredential.user!.email,
            'name': userCredential.user!.displayName,
            'phoneNumber': userCredential.user!.phoneNumber,
            'date': DateTime.now(),
          });
          String apiUrl = 'https://samawa.sigarda.com/api/auth/register';
          try {
            final response = await http.post(Uri.parse(apiUrl), body: {
              'uid': userCredential.user!.uid,
              'name': userCredential.user!.displayName,
              'bornday': "-",
              'gender': "-",
              'province': "-",
              'city': "-",
              'phone': userCredential.user!.phoneNumber,
              'email': userCredential.user!.email,
              'password': "-",
              'is_verified': 0,
              'role': 1
            });
            print(response.body);
            if (response.statusCode == 200) {
              print("Data berhasil ditambahkan");
            } else {
              print("Gagal menambahkan data");
            }
          } catch (e) {
            print("Error: $e");
          }
        }
        return userCredential.user;
      }
    } catch (e) {
      print(e);
    }
  }

  Future signOut() async {
    try {
      await GoogleSignIn().signOut();
      await firebaseAuth.signOut();
    } catch (e) {
      print(e);
    }
  }

  void getData() async {
    User? user = firebaseAuth.currentUser;
    firestore
        .collection('users')
        .doc(user?.uid)
        .snapshots()
        .listen((userData) {});
  }
}
