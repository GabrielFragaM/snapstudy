import 'package:flutter/material.dart';
import 'package:snapstudy/custom_paint/notebook_page.dart';
import 'package:snapstudy/postit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController questionController = TextEditingController();

  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> saves = [
    PaperCutPostIt(text: 'Olá mundo, Contas de matemárica, Contas de matemárica Contas de matemárica',),
    PaperCutPostIt(text: 'Contas de matemárica', color: Colors.red,),
    PaperCutPostIt(text: 'Portugûes', color: Colors.green,),
    PaperCutPostIt(text: 'Física Calcular', color: Colors.orange,),
  ];

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          elevation: 0,
          title: const Text('SnapStudy', style: TextStyle(fontSize: 16.6)),
          actions: [
            Container(
                height: 25,
                width: 120,
                margin: const EdgeInsets.only(top: 10, bottom: 10, right: 15),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.card_giftcard, color: Colors.cyan, size: 17),
                    SizedBox(width: 5),
                    Text('+ 3 Créditos', style: TextStyle(color: Colors.cyan, fontSize: 12, fontWeight: FontWeight.w700)),
                  ],
                )
            ),
            Container(
                height: 25,
                margin: const EdgeInsets.only(top: 10, bottom: 10, right: 20),
                color: Colors.transparent,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.star, color: Colors.white, size: 19),
                    SizedBox(width: 5),
                    Text('5', style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w700)),
                  ],
                )
            ),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              ListTile(
                title: const Text('Pesquisar'),
                selected: _selectedIndex == 0,
                onTap: () {
                  _onItemTapped(0);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Minha Conta'),
                selected: _selectedIndex == 1,
                onTap: () {
                  _onItemTapped(1);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Loja Créditos'),
                selected: _selectedIndex == 2,
                onTap: () {
                  _onItemTapped(2);
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        body: SizedBox(
          height: height,
          width: width,
          child: Stack(
            children: [
              SizedBox(
                height: height,
                width: double.infinity,
                child: Image.asset('assets/images/background.jpg', fit: BoxFit.cover),
              ),
              ListView(
                children: [
                  Container(
                    height: 150,
                    width: double.infinity,
                    margin: const EdgeInsets.only(left: 10, top: 10),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      padding: const EdgeInsets.all(15),
                      children: saves,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 30, right: 30, top: 15),
                    child: NotebookPage(),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
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
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            ),
                          ),
                          child: TextField(
                            controller: questionController,
                            maxLines: 5,
                            textInputAction: TextInputAction.done,
                            decoration: const InputDecoration.collapsed(hintText: 'Digite ou cole sua questão aqui...', hintStyle: TextStyle(fontSize: 14)),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 50,
                              width: 50,
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
                                  borderRadius: BorderRadius.circular(15)
                              ),
                              child: const Icon(Icons.camera_alt_outlined, color: Colors.white, size: 23,)
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
                                    Icon(Icons.send, color: Colors.white, size: 20),
                                    SizedBox(width: 15),
                                    Text('Enviar', style: TextStyle(color: Colors.white, fontSize: 14)),
                                  ],
                                )
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}