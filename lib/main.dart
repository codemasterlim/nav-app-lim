import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(
    title: ("hi"),
        // make home
        home: Firstpage()
  ));
}
// the main page
class Firstpage extends StatelessWidget
{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: <Widget>[
            AppBar(title: Text("Hello")),
            ActionChip(
                avatar: CircleAvatar(
                  backgroundColor: Colors.grey.shade800,
                  child: Text('hi'),
                ),
                label: Text('Thanks'),
                onPressed: () {
                  print("If you stand for nothing, Burr, what’ll you fall for?");
                }
            ),
            RaisedButton(
                child: Text("Page 1"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Next()
                    ),
                  );
                }
            ),
            RaisedButton(
                child: Text("Page 2"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Next2()
                    ),
                  );
                }
            ),
            RaisedButton(
                child: Text("Page 3"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Next3()
                    ),
                  );
                }
            ),
          ],
        ),
      ),
    );
  }
}
// first page
class Next extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: <Widget>[
            AppBar(title: Text("Page 1")),
            RaisedButton(
                child: Text("Firstpage"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Firstpage()
                    ),
                  );
                }
            ),
          ],
        ),
      ),
    );
  }
}
// second page
class Next2 extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: <Widget>[
            AppBar(title: Text("Page 2")),
            RaisedButton(
                child: Text("Firstpage"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Firstpage()
                    ),
                  );
                }
            ),
          ],
        ),
      ),
    );
  }
}
// third page
class Next3 extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
        home: Scaffold(
          body: Column(
            children: <Widget>[
              AppBar(title: Text("Page 3")),
              RaisedButton(
                child: Text("Firstpage"),
                onPressed: () {
                  Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Firstpage()
                  ),
                  );
                }
              ),
            ],
          ),
        ),
    );
  }
}


