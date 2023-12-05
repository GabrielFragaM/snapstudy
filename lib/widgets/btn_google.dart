import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../models/auth_services.dart';
import '../models/google_auth_model.dart';


class GoogleButton extends StatelessWidget {
  GoogleButton({super.key});

  AuthServices authServices = AuthServices();

  Future<Map<String, dynamic>> signInWithGoogle() async {
    try {
      GoogleSignIn googleSignIn = GoogleAuthModel.getGoogleSign();

      final GoogleSignInAccount? googleSignInAccount = await googleSignIn.signIn();

      if (googleSignInAccount != null) {
        final GoogleSignInAuthentication googleSignInAuthentication = await googleSignInAccount.authentication;

        final AuthCredential credential = GoogleAuthProvider.credential(
          accessToken: googleSignInAuthentication.accessToken,
          idToken: googleSignInAuthentication.idToken,
        );

        final Map<String, dynamic> result = await authServices.signIn(credential);

        if(result['success']){
          Map<String, dynamic> checkUserExist = await authServices.getUser(result['data']['id']);

          if(!checkUserExist['success']){
            Map<String, dynamic> createUser = await authServices.createUser(result['data']);

            return createUser;
          }else{
            return {
              'success': true,
              'data': checkUserExist['data']
            };
          }
        }
      }

      return {
        'success': false,
        'message': authServices.messageLoginFailed,
      };
    } catch (e) {
      return {
        'success': false,
        'message': authServices.messageLoginFailed,
        'error': e.toString(),
      };
    }
  }

  @override
  Widget build(BuildContext context) {

    return InkWell(
      child: Container(
          width: MediaQuery.of(context).size
              .width/2,
          height: MediaQuery.of(context).size.height/18,
          margin: const EdgeInsets.only(top: 25),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color:Colors.black
          ),
          child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    height: 30.0,
                    width: 30.0,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image:
                          AssetImage('assets/google.jpg'),
                          fit: BoxFit.cover),
                      shape: BoxShape.circle,
                    ),
                  ),
                  const Text('Entrar com o Google',
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),
                  ),
                ],
              )
          )
      ),);
  }

}