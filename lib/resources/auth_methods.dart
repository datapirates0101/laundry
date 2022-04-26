import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:laundry/models/user.dart' as model;

class AuthMethods {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<String> signUpUser(
    String name,
    String num,
    String email,
    String password,
  ) async {
    String res = "Some error occured";
    try {
      if (name.isNotEmpty &&
          num.isNotEmpty &&
          email.isNotEmpty &&
          password.isNotEmpty) {
        UserCredential cred = await _auth.createUserWithEmailAndPassword(
            email: email, password: password);

        model.User user =
            model.User(name: name, num: num, email: email, uid: cred.user!.uid);

        await _firestore.collection('users').doc(cred.user!.uid).set(user.toJason());

        res = "success";
      }
    } catch (e) {
      res = e.toString();
    }
    return res;
  }
}
