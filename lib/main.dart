import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
        home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatelessWidget{
  const MyHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Profile'),
        leading: Icon(CupertinoIcons.back),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('This is Cupertino design system',
              style: TextStyle(color: Colors.deepPurple),
            ),
            SizedBox(height: 20,),
            Icon(CupertinoIcons.airplane, size: 50, color: Colors.deepOrangeAccent,),
            SizedBox(height: 20,),
            CupertinoButton.filled(child: Text('Button'), onPressed: (){

            })
          ],
        ),
      ),
    );
  }

}