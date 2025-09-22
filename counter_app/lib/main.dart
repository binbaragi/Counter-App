import 'package:flutter/material.dart';

//data structures in dart
/* 
lists -> ordered and can have duplicates

list names = ['mitch', 'john', 'sarah', 'mitch'];

names[0] -> 'mitch'
names[1] -> 'john'
names[2] -> 'sarah'
names[3] -> 'mitch'

you can also specify the type of data in the list:
list<int> numbers = [1,2,3,4,5];

for(int i = 0; i < names.length; i++) {
  print(names[i]);
}

sets -> unordered and cannot have duplicates

set<string> uniqueNames = ['mitch', 'john', 'sarah'];

maps -> key-value pairs

Map user = {
  'name': 'mitch',
  'age': 30,
  'isAdmin': true
};

print(user['name']); -> 'mitch'
print(user['age']); -> 30
print(user['isAdmin']); -> true

*/
void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        backgroundColor: Colors.teal[200],
        appBar: AppBar(
          title: const Text('Counter'),
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.teal[800],

          //leading is the icon on the left side of the app bar
          leading: Icon(Icons.menu, color: Colors.white),

          //actions is a list of widgets that will be displayed on the right side of the app bar
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.settings, color: Colors.white),
            ),

            IconButton(
              onPressed: () {},
              icon: Icon(Icons.logout, color: Colors.white),
            ),
          ],
        ),
        body: Center(
          child: Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              color: Colors.teal[800],
              borderRadius: BorderRadius.circular(25),
            ),
            padding: EdgeInsets.all(25),
            child: Icon(Icons.favorite, color: Colors.white, size: 100),
          ),
        ),
      ),
    );
  }
}
