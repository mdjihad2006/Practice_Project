import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: const HomeActivity(),
      title: 'Theming',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.green,
          centerTitle: true,
        ),
      ),
    );
  }
}
class HomeActivity extends StatefulWidget{
  const HomeActivity({super.key});

  @override
  State<StatefulWidget> createState() => HomeState();

}
class HomeState extends State<HomeActivity>{

  @override
  Widget build(BuildContext context) {
    

    return Scaffold(
      appBar: AppBar(
        title: const Text('Theming'),
      ),

      // body: Center(
      //   child: Stack(
      //     //alignment: Alignment.center,
      //     clipBehavior: Clip.none,
      //     textDirection: TextDirection.ltr,      // Stack widget
      //     children: [
      //       Container(
      //         height: 250,
      //         width: 250,
      //         color: Colors.deepPurple,
      //       ),
      //       Positioned(
      //         top: -10,
      //         left: -10,
      //         child: Container(
      //           height: 200,
      //           width: 200,
      //           color: Colors.pink,
      //         ),
      //       ),
      //       Positioned(
      //         bottom: -10,
      //         right: -10,
      //         child: Container(
      //           height: 150,
      //           width: 150,
      //           color: Colors.deepOrangeAccent,
      //         ),
      //       ),
      //       Text('Hey Hello')
      //     ],
      //   ),
      // ),

      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,          // Row , Column , Stack
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              height: 200,
                              width: 200,
                              color: Colors.pink.shade200,
                            ),
                            Container(
                              height: 150,
                              width: 150,
                              color: Colors.blue.shade200,
                            ),
                          ]
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Container(
                        height: 200,
                        width: 200,
                        color: Colors.deepPurple,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Container(
                        height: 200,
                        width: 200,
                        color: Colors.limeAccent,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Container(
                        height: 200,
                        width: 200,
                        color: Colors.blueAccent,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                          height: 200,
                          width: 200,
                          color: Colors.amber.shade200,
                        ),
                          Container(
                            height: 150,
                            width: 150,
                            color: Colors.blue.shade200,
                          ),
                       ]
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: Container(
                  height: 200,
                  width: double.infinity,
                  color: Colors.red,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: Container(
                  height: 200,
                  width: double.infinity,
                  color: Colors.pink,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: Container(
                  height: 200,
                  width: double.infinity,
                  color: Colors.green,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}