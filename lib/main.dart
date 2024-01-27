import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:firebase_database/firebase_database.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // leave this commented out for now, once this starts working we'll use this instead of future<firebaseapp> stuff below
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );

  runApp(const CupertinoApp(
    debugShowCheckedModeBanner: false,
    title: 'Open Rooms',
    home: MyHomePage(),
  ));
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final Future<FirebaseApp> _fApp =
      Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  String room1Value = '0';
  String room2Value = '0';
  String room3Value = '0';

//test i wrote to make sure firebase was connecting to our app
//if it is connected, it will print try to display the value of room1
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: _fApp,
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return const Text('Something went wrong');
            } else if (snapshot.hasData) {
              return content();
            } else {
              return const Text('Loading');
            }
          }),
    );
  }

  Widget content() {
    DatabaseReference ref = FirebaseDatabase.instance.ref().child('room1');
    //this block will constantly listen for changes of room1 key in firebase
    ref.onValue.listen(
      (event) {
        setState(() {
          room1Value = event.snapshot.value.toString();
        });
      },
    );
    return Column(
      children: [
        Center(
            child: Text(
                "Room1 Value: $room1Value")) //i have the value of room1 set to 1 in the database
      ], //display the value of room1
    );
  }
}
