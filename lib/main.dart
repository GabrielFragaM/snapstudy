import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:snapstudy/custom_paint/notebook_page.dart';
import 'package:snapstudy/postit.dart';
import 'package:zoom_widget/zoom_widget.dart';

void main() {
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
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        body: Zoom(
          initTotalZoomOut: false,
          backgroundColor: Colors.black,
          child: SizedBox(
            height: height,
            width: width,
            child: Stack(
              children: [
                SizedBox(
                  height: height,
                  width: double.infinity,
                  child: Image.asset('assets/images/background.jpg', fit: BoxFit.cover),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: EdgeInsets.only(left: 30, right: 30, top: 200),
                    child: NotebookPage(),
                  )
                ),
                Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      height: 150,
                      width: double.infinity,
                      margin: const EdgeInsets.only(left: 10, top: 30),
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        padding: const EdgeInsets.all(15),
                        children: const [
                          PaperCutPostIt(text: 'Olá mundo, Contas de matemárica, Contas de matemárica Contas de matemárica',),
                          PaperCutPostIt(text: 'Contas de matemárica', color: Colors.red,),
                          PaperCutPostIt(text: 'Portugûes', color: Colors.green,),
                          PaperCutPostIt(text: 'Física Calcular', color: Colors.orange,),
                        ],
                      ),
                    )
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: height / 3.5,
                    margin: const EdgeInsets.all(30),
                    width: double.infinity,
                    child: Column(
                      children: [
                        Card(
                            color: Colors.white,
                            child: Padding(
                              padding: EdgeInsets.all(10),
                              child: TextField(
                                maxLines: 6, //or null
                                decoration: InputDecoration.collapsed(hintText: "Digite ou cole sua questão aqui..."),
                              ),
                            )
                        ),
                        Container(
                          height: 50,
                          width: double.infinity,
                          margin: EdgeInsets.only(top: 15),
                          decoration: BoxDecoration(
                            color: Colors.black,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(.2),
                                spreadRadius: 1,
                                blurRadius: 4.5,
                                offset: const Offset(2, 3),
                              ),
                            ],
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: Center(
                            child: Text('Tirar Foto', style: TextStyle(color: Colors.white)),
                          ),
                        )
                      ],
                    ),
                  )
                )
              ],
            ),
          )
        ),
      ),
    );
  }
}