import 'package:flutter/material.dart';

void main() {
  runApp(const constants());
}

class constants  extends StatefulWidget{
  @override
  State<constants> createState() => _constantsState();

  const constants();
}

class _constantsState extends State<constants> {
  int count=0;
  @override
  Widget build(BuildContext context){
    return MaterialApp(
        title: 'My dog',
        home: Scaffold(
          appBar: AppBar(
            title: Text('Yellow lab'),
          ),
          floatingActionButton:   FloatingActionButton(
            onPressed: (){
              setState(() {
                count+=1;
              });
            },
            child: Icon(Icons.add),
            backgroundColor: Colors.grey[800],
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('$count'),

              ],
            ),
          ),
        )
    );
  }
}






