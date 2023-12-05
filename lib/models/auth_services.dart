import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthServices {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  String messageLoginFailed = 'Não foi possível entrar em sua conta no momento.';

  Future<Map<String, dynamic>> signIn(AuthCredential credential) async {

    try {
      final UserCredential result = await _firebaseAuth.signInWithCredential(credential);

      if(result.user != null){
        return {
          'success': true,
          'data': {'id': result.user!.uid, 'email': result.user!.email, 'profileImage': result.user!.photoURL}
        };
      }else{
        return {
          'success': false
        };
      }
    } catch (e) {
      return {
        'success': false,
        'message': messageLoginFailed,
        'error': e.toString(),
      };
    }
  }


  Future<Map<String, dynamic>> getUser(String userId) async {

    QuerySnapshot find = await FirebaseFirestore.instance.collection('users').where('id', isEqualTo: userId).get();

    final bool success = find.docs.isNotEmpty;

    if(success){
      return {
        'success': success,
        'data': find.docs.single.data()
      };
    }else{
      return {
        'success': success
      };
    }
  }


  Future<Map<String, dynamic>> createUser(Map<String, dynamic> userData) async {

    try {
      userData = {
        ...userData,
        'createdAt': Timestamp.now(),
        'credits': 5
      };

      await FirebaseFirestore.instance.collection('users').doc(userData['id']).set(userData);

      return {
        'success': true,
        'data': userData
      };
    } catch (e) {
      return {
        'success': false,
      };
    }
  }

}