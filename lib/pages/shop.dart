import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:snapstudy/widgets/btn_google.dart';

class ShopPage extends StatefulWidget {
  final String? initialPage;
  final String? params;
  const ShopPage({super.key, this.initialPage, this.params,});

  @override
  _ShopPageState createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {

  @override
  Widget build(BuildContext context) {

    return Column(
        children: [
          Container(
              margin: const EdgeInsets.only(left: 30, right: 30, top: 30),
              child: Row(
                children: const [
                  Text('Loja'),
                  Icon(Icons.shop)
                ],
              )
          ),
          Visibility(
            visible: FirebaseAuth.instance.currentUser != null,
            replacement: GoogleButton(),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 30, right: 30, top: 10),
                  child: const Text('Adiquira Créditos para mais pesquisas!'),
                ),
                Column(
                  children: [
                    ///SELL 5 CREDITS FOR 0,99
                    GestureDetector(
                      onTap: () => sell(credits: 5, price: 0.99),
                      child: Container(
                          height: 60,
                          width: 100,
                          padding: const EdgeInsets.all(10),
                          margin: const EdgeInsets.only(top: 30),
                          decoration: BoxDecoration(
                              color: Colors.white,
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            children: [
                              Icon(Icons.star),
                              Text('7 Créditos'),
                              Container(
                                  height: 30,
                                  width: 100,
                                  padding: const EdgeInsets.all(10),
                                  margin: const EdgeInsets.only(top: 30),
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
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.baseline,
                                    children: [
                                      Icon(Icons.shopping_cart_rounded),
                                      Text('R\$ 0,99'),

                                    ],
                                  )
                              ),
                            ],
                          )
                      ),
                    ),
                    ///SELL 15 CREDITS FOR 1,99
                    GestureDetector(
                      onTap: () => sell(credits: 15, price: 1.99),
                      child: Container(
                          height: 60,
                          width: 100,
                          padding: const EdgeInsets.all(10),
                          margin: const EdgeInsets.only(top: 30),
                          decoration: BoxDecoration(
                              color: Colors.white,
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            children: [
                              Icon(Icons.star),
                              Text('15 Créditos'),
                              Container(
                                  height: 30,
                                  width: 100,
                                  padding: const EdgeInsets.all(10),
                                  margin: const EdgeInsets.only(top: 30),
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
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.baseline,
                                    children: [
                                      Icon(Icons.shopping_cart_rounded),
                                      Text('R\$ 0,99'),

                                    ],
                                  )
                              ),
                            ],
                          )
                      ),
                    ),
                    ///SELL 50 CREDITS FOR 5,99
                    GestureDetector(
                      onTap: () => sell(credits: 50, price: 5.99),
                      child: Container(
                          height: 60,
                          width: 100,
                          padding: const EdgeInsets.all(10),
                          margin: const EdgeInsets.only(top: 30),
                          decoration: BoxDecoration(
                              color: Colors.white,
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            children: [
                              Icon(Icons.star),
                              Text('50 Créditos'),
                              Container(
                                  height: 30,
                                  width: 100,
                                  padding: const EdgeInsets.all(10),
                                  margin: const EdgeInsets.only(top: 30),
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
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.baseline,
                                    children: [
                                      Icon(Icons.shopping_cart_rounded),
                                      Text('R\$ 0,99'),

                                    ],
                                  )
                              ),
                            ],
                          )
                      ),
                    ),
                    ///SELL 120 CREDITS FOR 9,90
                    GestureDetector(
                      onTap: () => sell(credits: 5, price: 9.90),
                      child: Container(
                          height: 60,
                          width: 100,
                          padding: const EdgeInsets.all(10),
                          margin: const EdgeInsets.only(top: 30),
                          decoration: BoxDecoration(
                              color: Colors.white,
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            children: [
                              Icon(Icons.star),
                              Text('120 Créditos'),
                              Container(
                                  height: 30,
                                  width: 100,
                                  padding: const EdgeInsets.all(10),
                                  margin: const EdgeInsets.only(top: 30),
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
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.baseline,
                                    children: [
                                      Icon(Icons.shopping_cart_rounded),
                                      Text('R\$ 0,99'),

                                    ],
                                  )
                              ),
                            ],
                          )
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ]
    );
  }
}

sell({required int credits, required double price}) {
  //todo invoke google pay
}