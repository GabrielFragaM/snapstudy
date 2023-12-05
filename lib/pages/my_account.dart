import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../widgets/btn_google.dart';

class MyAccountPage extends StatefulWidget {
  const MyAccountPage({super.key});

  @override
  _MyAccountPageState createState() => _MyAccountPageState();
}

class _MyAccountPageState extends State<MyAccountPage> {

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Center(
      child: Container(
        height: height / 1.5,
        margin: const EdgeInsets.only(left: 30, right: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Visibility(
              visible: FirebaseAuth.instance.currentUser != null,
              replacement: GoogleButton(),
              child: Column(
                children: [
                  Image.network(FirebaseAuth.instance.currentUser?.photoURL ?? ''),
                  const SizedBox(height: 10),
                  Text('Email: ${FirebaseAuth.instance.currentUser?.email ?? ''}'),
                  const SizedBox(height: 10),
                  Text('Créditos disponíveis: 3'),
                  Container(
                      height: 45,
                      width: 150,
                      margin: const EdgeInsets.only(top: 10),
                      decoration: BoxDecoration(
                          color: Colors.cyan,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(.1),
                              spreadRadius: 1,
                              blurRadius: 7,
                              offset: const Offset(2, 2),
                            ),
                          ],
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.logout, color: Colors.white, size: 20),
                          SizedBox(width: 15),
                          Text('Fazer Logout', style: TextStyle(color: Colors.white, fontSize: 14)),
                        ],
                      )
                  ),
                  Container(
                      height: 45,
                      width: 150,
                      margin: const EdgeInsets.only(top: 10),
                      decoration: BoxDecoration(
                          color: Colors.cyan,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(.1),
                              spreadRadius: 1,
                              blurRadius: 7,
                              offset: const Offset(2, 2),
                            ),
                          ],
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.delete, color: Colors.white, size: 20),
                          SizedBox(width: 15),
                          Text('Deletar conta e dados', style: TextStyle(color: Colors.white, fontSize: 14)),
                        ],
                      )
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}