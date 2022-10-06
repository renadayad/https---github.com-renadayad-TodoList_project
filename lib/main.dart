import 'package:flutter/material.dart';
import 'package:todoproject/models/task_dat.dart';
import 'screens/tasks.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        home: Tasks(),
      ),
    );
  }
}














// void main() {
//   runApp(MaterialApp(
//     theme: ThemeData(
//         brightness: Brightness.light,
//         primaryColor: Colors.blue,
//         accentColor: Colors.blue),
//     home: MyApp(),
//   ));
// }

// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//    List todos = List();
//   // List<String> todos = List([])

//   String inpitTodo = "";
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("My ToldoList"),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           showDialog(
//               context: context,
//               builder: (BuildContext context) {
//                 return AlertDialog(
//                   shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(8)),
//                   title: Text("Add Todo"),
//                   content: TextField(
//                     onChanged: (String value) {
//                       inpitTodo = value;
//                     },
//                   ),
//                   // actions: <Widget>[
//                   //   FLatButton(
//                   //     onPresses: () {
//                   //       setState(() {
//                   //         // todos.add(inpitTodo);
//                   //       });
//                   //       Navigator.of(context).pop();
//                   //     },
//                   //     child: Text("Add"),
//                   //   ) //FlatButton
//                   // ],
//                 );
//               });
//         },
//         child: Icon(
//           Icons.add,
//           color: Colors.white,
//         ),
//       ),
//       body: ListView.builder(
//         itemCount: 5,
//         itemBuilder: (BuildContext context,int index){
//           return Dismissible(
//             key: Key(todos[index]))
//         },
//       ),
//     );
//   }
// }






