import 'package:flutter/material.dart';

void main() => runApp(MyStatefulWidget());

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  String imgUrl = 'https://www.w3schools.com/w3css/img_lights.jpg';
  String myFunction(url) {
    if (url == 'https://www.w3schools.com/w3css/img_lights.jpg') {
      return 'https://www.w3schools.com/w3css/img_forest.jpg';
    } else {
      return 'https://www.w3schools.com/w3css/img_lights.jpg';
    }
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello World'),
          centerTitle: true,
        ),
        body: Center(child: Image(image: NetworkImage(imgUrl))),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() => imgUrl = myFunction(imgUrl));
          },
          tooltip: 'Increment Counter',
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
