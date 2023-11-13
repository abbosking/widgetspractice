import 'package:flutter/material.dart';

void main() {
  runApp(const constants());
}

class constants  extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'My dog',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Yellow lab'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DogName('Eocky'),
              SizedBox(height: 0.8)
            ],
          ),
        ),
      )
    );
  }
  const constants();
}

class DogName extends StatelessWidget {
  final String name;

  const DogName(this.name);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
        decoration: BoxDecoration(color: Colors.lightBlueAccent),
        child: Padding(padding: const EdgeInsets.all(8.0),
            child: Text(name)));
  }
}
