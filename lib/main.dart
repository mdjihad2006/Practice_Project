
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => const MyApp(), // Wrap your app
  ),);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home:   const HomeActivity(),
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
  
  ButtonStyle buttonStyle = ElevatedButton.styleFrom(
    padding: EdgeInsets.all(15),
    backgroundColor: Colors.pink,
    foregroundColor: Colors.limeAccent,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15)
    )
  );

 mySnackBar(context,String message){
   return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message),)
    );
  }

 showSnak(context,String message){
 return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: Text(message.toString()))
  );
 }
 myAlertDialog(context){
   return showDialog(
       context: context,
       builder: (BuildContext context){
         return Container(
           child: AlertDialog(
             title: Text('ALert..!'),
             content: Text('Do you want to delete'),
             actions: [
               TextButton(onPressed: (){
                 showSnak(context, 'Your Request is loading');
               }, child: Text('Yes')),
               TextButton(onPressed: (){
                 showSnak(context, 'Invalid');
                 Navigator.of(context).pop();
                 }, child: Text('No'))
             ],
           ),
         );
       });
 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarOpacity: 1,
        title: const Text('Hello'),
        actions: [
          IconButton(onPressed: (){
            mySnackBar(context,'Searching product');
          }, icon: const Icon(Icons.search)),
          IconButton(onPressed: (){
            mySnackBar(context,'Rate us');
          }, icon: const Icon(Icons.star)),
          IconButton(onPressed: (){
            mySnackBar(context, 'Write Email');
          }, icon: const Icon(Icons.email)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 5,
        onPressed: (){
        mySnackBar(context,'Adding product');
      },child: const Icon(Icons.shopping_cart_sharp),),
      drawer: Drawer(
        width: 200,
        child: ListView(
          children: [
            DrawerHeader(
              padding: const EdgeInsets.all(0),
              child: UserAccountsDrawerHeader(
                decoration: const BoxDecoration(
                  color: Colors.deepPurpleAccent
                ),
                  accountName: const Text('Jihad Ahmed'),
                  accountEmail: const Text('jihadahmed@gmail.com'),
                  currentAccountPicture: Image.asset('assets/images/My.png',),
              ),
            ),
            ListTile(
              title: const Text('Home'),onTap: (){ mySnackBar(context,'This is Home');},
              leading: const Icon(Icons.home,),
            ),
            ListTile(
              title: const Text('message'),onTap: (){ mySnackBar(context,'Showing Message');},
              leading: const Icon(Icons.message),
            ),
            ListTile(
              title: const Text('Profile'),onTap: (){ mySnackBar(context,'My profile');},
              leading: const Icon(Icons.person),
            ),
            ListTile(
              title: const Text('Rate us'),onTap: (){ mySnackBar(context,'Rating us');},
              leading: const Icon(Icons.star),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: const [
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(onPressed: (){
              myAlertDialog(context);
            }, child: Text('Alert Dialog'),style: buttonStyle,)
          ],
        ),
      ),
    );
  }
}