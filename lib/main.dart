import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: Text('Daraz'),
              backgroundColor: Colors.deepOrange,
            ),
            body:Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        width: 100,
                        height: 100,
                        alignment: Alignment.bottomRight,
                        padding: EdgeInsets.all(15),
                        margin: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            color: Colors.amber,
                            border: Border.all(color: Colors.pink, width: 5),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(16),
                                bottomRight: Radius.circular(16)
                            ),
                            // shape: BoxShape.circle
                            image: DecorationImage(
                                image: AssetImage('assets/images/T-Shirt pic.jpg'),
                                fit: BoxFit.cover,
                                opacity: 0.6
                            ),
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                color: Colors.deepPurple.withOpacity(0.6),
                                spreadRadius: 3,
                                blurRadius: 10,
                                offset: Offset(0,5),
                              ),
                            ]
                        ),
                        child: Icon(Icons.add_a_photo, color: Colors.red)
                    ),
                    ElevatedButton(
                        onPressed: () {
                          showAboutDialog(context: context);
                        },
                      child: Text('Click')
                    )
                  ],
                )
            )
        )
    );
  }
}