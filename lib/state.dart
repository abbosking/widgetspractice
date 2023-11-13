import 'package:flutter/material.dart';

void main() {
  runApp(const Congratulations());
}

class Congratulations  extends StatefulWidget{
  @override
  State<Congratulations> createState() => _CongratulationsState();

  const Congratulations();
}

class _CongratulationsState extends State<Congratulations> {
  int count=0;
  @override
  Widget build(BuildContext context){
    return MaterialApp(
        title: 'Congratulations',
        home: Scaffold(
          appBar: AppBar(
            title: Text('Greetings'),
          ),
          floatingActionButton:   FloatingActionButton(
            onPressed: (){
              setState(() {
                count+=1;
              });
            },
            child: Icon(Icons.add),
            backgroundColor: Colors.grey[700],
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






