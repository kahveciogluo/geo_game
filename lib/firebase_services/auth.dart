import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<User?> signInWithEmail(String email, String password) async{
    var user =  await _auth.signInWithEmailAndPassword(email: email, password: password);
    return user.user;
  }

  Future<void> signOut() async{
    return await _auth.signOut();
  }

  Future<User?> createUser(String name, String email, String password) async{
    var user = await _auth.createUserWithEmailAndPassword(email: email, password: password);
    await _firestore.collection('User').doc(user.user?.uid ?? "").set({'username': name, 'email': email, 'password': password});
    return user.user;
  }
}