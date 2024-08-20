import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => MyApp(), // Wrap your app
  ),);
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

    // MediaQueryData mediaQuery = MediaQuery.of(context);
    //
    // if(mediaQuery.size.width < 400){
    //   print('This is Mobile phone');
    // }
    // else if(mediaQuery.size.width >400 && mediaQuery.size.width < 1080){
    //   print('This is a tablet');
    // }
    // else{print('This is Laptop');}

    return Scaffold(
      appBar: AppBar(
        title: const Text('Theming'),
      ),
      // body: Column(
      //   children: [
      //     Expanded(
      //       flex: 1,
      //         child: Container(
      //           height: 300,
      //           width: double.infinity,
      //           color: Colors.deepOrange,
      //         )
      //     ),
      //     Expanded(
      //         flex: 1,
      //         child: Container(
      //           height: 300,
      //           width: double.infinity,
      //           color: Colors.pink,
      //         )
      //     ),
      //     Expanded(
      //         flex: 1,
      //         child: Container(
      //           height: 300,
      //           width: double.infinity,
      //           color: Colors.deepPurple,
      //         )
      //     ),
      //   ],
      // )


      // body: AspectRatio(
      //     aspectRatio: 16/8,
      //   child: Center(
      //     child: Container(
      //       height: 200,
      //       width: 200,
      //       color: Colors.deepOrange,
      //       alignment: Alignment.center,
      //     ),
      //   ),
      // ),


      // body: Wrap(
      //   alignment: WrapAlignment.center,
      //   crossAxisAlignment: WrapCrossAlignment.center,
      //   spacing: 2,
      //   children: [
      //     Text('Hello mr.Jihad,glad to see you'),
      //     Text('Hello mr.Jihad'),
      //     Text('Hello mr.Jihad,glad to see you'),
      //     Text('Hello mr.Jihad'),
      //     Text('Hello mr.Jihad'),
      //     Text('Hello mr.Jihad'),
      //   ],
      // ),
      // body: OrientationBuilder(
      //   builder:(context, Orientation orientation){
      //     if(orientation == Orientation.portrait){
      //       return  Center(
      //           child: Container(
      //             height: 200,
      //             width: 200,
      //             color: Colors.pink,
      //           )
      //       );
      //     }
      //     else{
      //       return  Center(
      //           child: Container(
      //             height: 200,
      //             width: 200,
      //             color: Colors.deepPurple,
      //           )
      //       );
      //     }
      //   }
      // ),,
      // body: LayoutBuilder(
      //   builder: (context, BoxConstraints constraints){
      //     if(constraints.maxWidth < 640){
      //       return Center(
      //         child: Container(
      //           height: 200,
      //           width: 200,
      //           color: Colors.pink,
      //           child: Center(
      //             child: Text('This is a phone')
      //           ),
      //         ),
      //       );
      //     }
      //     else if(constraints.maxWidth > 640 && constraints.maxWidth < 1008){
      //       return Center(
      //         child: Container(
      //           height: 200,
      //           width: 200,
      //           color: Colors.blueAccent,
      //           child: Center(
      //             child: Text('This is a Tablet')
      //           ),
      //         ),
      //       );
      //     }
      //     else{
      //       return Center(
      //         child: Container(
      //           height: 200,
      //           width: 200,
      //           color: Colors.green,
      //           child: Center(
      //             child: Text('This is a Laptop')
      //           ),
      //         ),
      //       );
      //     }
      //   }
      // ),
    );
  }
}