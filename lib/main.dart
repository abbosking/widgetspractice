import 'package:flutter/material.dart';

void main() {
  runApp(const constants());
}

class constants  extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Congratulations',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Greetings'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              greetings('Welcome to my app'),
              SizedBox(height: 0.8),
              greetings('good luck'),
              SizedBox(height: 0.8)
            ],
          ),
        ),
      )
    );
  }
  const constants();
}

class greetings extends StatelessWidget {
  final String name;

  const greetings(this.name);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
        decoration: BoxDecoration(color: Colors.lightBlueAccent),
        child: Padding(padding: const EdgeInsets.all(8.0),
            child: Text(name)));
  }
}
