import 'package:google_sign_in/google_sign_in.dart';

class GoogleAuthModel {

  static getGoogleSign(){
    return  GoogleSignIn(
      scopes: [
        'email',
        'profile',
      ]
    );
  }

  factory GoogleAuthModel() => GoogleAuthModel._internal();
  GoogleAuthModel._internal();
}