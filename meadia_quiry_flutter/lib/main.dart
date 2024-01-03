import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var screenwidth = MediaQuery.of(context).size.width;
    var screenheight = MediaQuery.of(context).size.height;
    return Scaffold(appBar: AppBar(title: Text("PAGE DESIGN"),backgroundColor: Colors.deepPurpleAccent),
      body: screenwidth>467 ? tabletHomePage(screenwidth,screenheight):phoneHomePage(screenwidth,screenheight),
    );
  }
  Widget tabletHomePage(double screenwidth,double screenheight,){
    return Container(height:screenheight ,width: screenwidth,color: Colors.amberAccent,child:
      GridView.count(
      crossAxisCount: 2, // Number of columns in each row
      children:[
        TextField(decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(33))),),
        TextField(decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(33))),),
        TextField(decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(33))),),
        TextField(decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(33))),),
        TextField(decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(33))),),
        TextField(decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(33))),),
        Center(
          child: FilledButton(onPressed: () {
          return setState(() {

          });
          }, child: Text("SUBMIT")),
        ),
      ],
    ),
    );
  }
  Widget phoneHomePage(double screenwidth,double screenheight,){
    return Container(height:screenheight ,width: screenwidth,color: Colors.grey,padding: EdgeInsets.all(22),child: Column(
      children: [
        TextField(decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(33))),),
        Padding(padding: EdgeInsets.all(15)),
        TextField(decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(33))),),
        Padding(padding: EdgeInsets.all(15)),
        TextField(decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(33))),),
        Padding(padding: EdgeInsets.all(15)),
        TextField(decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(33))),),
        Padding(padding: EdgeInsets.all(15)),
        TextField(decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(33))),),
        Padding(padding: EdgeInsets.all(15)),
        TextField(decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(33))),),
        Padding(padding: EdgeInsets.all(15)),
        FilledButton(onPressed: () {
          return setState(() {

          });
        }, child: Text("SUBMIT")),

      ],
    ),);
  }
}


// class MyGridView extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return GridView.count(
//       crossAxisCount: 2, // Number of columns in each row
//       children: <Widget>[
//         TextField(
//           decoration: InputDecoration(labelText: 'Text Field 1'),
//         ),
//         TextField(
//           decoration: InputDecoration(labelText: 'Text Field 2'),
//         ),
//       ],
//     );
//   }
// }


// GridView.builder(gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
//     maxCrossAxisExtent: double.infinity), itemBuilder: (context, index) {
//       return
//       Column(children: [
//       TextField(decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(33))),),
//       TextField(decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(33))),),
//       TextField(decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(33))),),
//       TextField(decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(33))),),
//       TextField(decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(33))),),
//       TextField(decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(33))),),
//       ],);
//     },)