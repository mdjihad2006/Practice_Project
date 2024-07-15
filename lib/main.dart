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
      home: Scaffold(
        appBar: AppBar(
          title: Text('Daraz'),
          backgroundColor: Colors.deepOrange,
        ),
        body: ListView.separated(
          itemCount: 20,
          itemBuilder: (context, index){
            return ListTile(
              tileColor: Colors.tealAccent,
              title: Image.asset('assets/images/T-Shirt pic.jpg',
                width: 200,
                height: 200,
                fit: BoxFit.cover,
              ),
              subtitle: Text('A new T-shirt arrived'),
              trailing: Column(
                children: [
                  Icon(Icons.favorite, color:  Colors.pink,),
                  Text('Fav')
                ],
              ),
              onTap: (){
                print('$index item taped');
              },
            );
          },
          separatorBuilder: (context, index) {
            return Divider(
              color: Colors.deepOrange,
            );
          },
        ),
        // body: GridView.builder(
        //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, crossAxisSpacing: 8, mainAxisSpacing: 8),
        //   itemCount: 20,
        //   itemBuilder: (context, index) {
        //     return Image.asset('assets/images/T-Shirt pic.jpg',
        //               width: 200,
        //               height: 200,
        //             );
        //   },
        // ),
      ),
    );
  }
}
