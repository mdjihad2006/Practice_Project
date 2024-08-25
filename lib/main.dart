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
      debugShowCheckedModeBanner: false,
      home:   HomeActivity(),
      title: 'Theming',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.deepPurpleAccent,
          toolbarHeight: 50,
          elevation: 10,
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

void  mySnackBar(BuildContext context,String message){
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message),)
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarOpacity: 1,
        title: Text('Hello'),
        actions: [
          IconButton(onPressed: (){
            mySnackBar(context,'Searching product');
          }, icon: Icon(Icons.search)),
          IconButton(onPressed: (){
            mySnackBar(context,'Rate us');
          }, icon: Icon(Icons.star)),
          IconButton(onPressed: (){
            mySnackBar(context, 'Write Email');
          }, icon: Icon(Icons.email)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 5,
        focusColor: Colors.pink,
        onPressed: (){
        mySnackBar(context,'Adding product');
      },child: Icon(Icons.shopping_cart_sharp),),
      drawer: Drawer(
        width: 200,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.all(0),
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.deepPurpleAccent
                ),
                  accountName: Text('Jihad Ahmed'),
                  accountEmail: Text('jihadahmed@gmail.com'),
                  currentAccountPicture: Image.asset('assets/images/My.png',),
              ),
            ),
            ListTile(
              title: Text('Home'),onTap: (){ mySnackBar(context,'This is Home');},
              leading: Icon(Icons.home,),
            ),
            ListTile(
              title: Text('message'),onTap: (){ mySnackBar(context,'Showing Message');},
              leading: Icon(Icons.message),
            ),
            ListTile(
              title: Text('Profile'),onTap: (){ mySnackBar(context,'My profile');},
              leading: Icon(Icons.person),
            ),
            ListTile(
              title: Text('Rate us'),onTap: (){ mySnackBar(context,'Rating us');},
              leading: Icon(Icons.star),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label:'Home'),

            BottomNavigationBarItem(icon: Icon(Icons.message),label:'Message'),

            BottomNavigationBarItem(icon: Icon(Icons.person),label:'profile'),
          ],
        onTap: (int index){
            if(index == 1){
              mySnackBar(context,'This is Home');
            }
            else if(index == 2){
              mySnackBar(context,'Showing Message');
            }
            else if(index == 3){
              mySnackBar(context,'My profile');
            }
        },
      ),
    );
  }
}