import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
      title: 'Intro App',
      theme: ThemeData(
        brightness: Brightness.light,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.pink,
          titleTextStyle: TextStyle(
            color: Colors.white,
            letterSpacing: 1,
            fontSize: 20,
            fontWeight: FontWeight.bold
          )
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: Colors.green,
            textStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold
            )
          )
        ),
        inputDecorationTheme: InputDecorationTheme(
          labelStyle: TextStyle(
            color: Colors.indigoAccent,
            fontSize: 15,
            fontWeight: FontWeight.bold,

          ),
          hintStyle: TextStyle(
              color: Colors.grey.shade400
          ),

          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                  color: Colors.blue,
                  width: 2
              )
          ),

          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                  color: Colors.blue,
                  width: 2
              )
          ),

          disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                  color: Colors.red,
                  width: 2
              )
          ),
        )
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
          appBarTheme: AppBarTheme(
              backgroundColor: Colors.deepPurple,
              titleTextStyle: TextStyle(
                  color: Colors.white,
                  letterSpacing: 1,
                  fontSize: 20,
                  fontWeight: FontWeight.bold
              )
          ),
          textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(
                  foregroundColor: Colors.green,
                  textStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                  )
              )
          ),
          inputDecorationTheme: InputDecorationTheme(
            labelStyle: TextStyle(
              color: Colors.indigoAccent,
              fontSize: 15,
              fontWeight: FontWeight.bold,

            ),
            hintStyle: TextStyle(
                color: Colors.grey.shade400
            ),

            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                    color: Colors.blue,
                    width: 2
                )
            ),

            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                    color: Colors.blue,
                    width: 2
                )
            ),

            disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                    color: Colors.red,
                    width: 2
                )
            ),
          )
      ),
      themeMode: ThemeMode.system,
    );
  }
}
class MyHomePage extends StatefulWidget{
  const MyHomePage({super.key});

  @override
  State<StatefulWidget> createState() => HomeState();
}
class HomeState extends State<MyHomePage> {
  TextEditingController _descriptionTEController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Demo'),
        ),
        body: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
                children: [
                  TextField(
                    enabled: true,
                      decoration: InputDecoration(
                        label: Text('Email'),
                        labelStyle: TextStyle(
                          color: Colors.indigoAccent,
                          fontSize: 15,
                          fontWeight: FontWeight.bold
                        ),
                        hintText: 'Enter your email',
                        hintStyle: TextStyle(
                            color: Colors.grey.shade400
                        ),
                        suffixIcon: IconButton(
                            onPressed: (){},
                            icon: Icon(Icons.search)
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Colors.blue,
                              width: 2
                            )
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                                color: Colors.blue,
                                width: 2
                            )
                        ),
                        disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                                color: Colors.red,
                                width: 2
                            )
                        ),
                      )
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                      enabled: true,
                      obscureText: true,
                      decoration: InputDecoration(
                        label: Text('Password'),
                        labelStyle: TextStyle(
                            color: Colors.indigoAccent,
                            fontSize: 15,
                            fontWeight: FontWeight.bold
                        ),
                        hintText: 'Enter the Password',
                        hintStyle: TextStyle(
                            color: Colors.grey.shade400
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                                color: Colors.blue,
                                width: 2
                            )
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                                color: Colors.blue,
                                width: 2
                            )
                        ),
                        disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                                color: Colors.red,
                                width: 2
                            )
                        ),
                      )
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      TextButton(onPressed: (){}, child: Text('Forgot password')),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                      maxLines: 5,
                      maxLength: 200,
                      enabled: true,
                      controller: _descriptionTEController,
                      onChanged: (String value){
                        print(value);
                      },
                      decoration: InputDecoration(
                        label: Text('Description'),
                        alignLabelWithHint: true,
                        hintText: 'Enter the Description',
                      )
                  ),
                  TextButton(onPressed: (){
                    _descriptionTEController.clear();
                  },
                  child: Text('Text Edit',)
                  )
                ]
            )
        )
    );
  }
}