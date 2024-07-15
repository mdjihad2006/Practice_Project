import 'package:flutter/material.dart';

void main(){
  runApp(Myapp());
}

class Myapp extends StatelessWidget{
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: Text('Daraz'),
              backgroundColor: Colors.deepOrangeAccent,
            ),
            //   body: SingleChildScrollView(
            //     scrollDirection: Axis.horizontal,
            //   child: Row(
            //     children: [
            //       Image.asset('assets/images/T-Shirt pic.jpg',
            //         width: 200,
            //         height: 200,
            //         fit: BoxFit.cover,
            //       ),
            //       Image.asset('assets/images/T-Shirt pic.jpg',
            //         width: 200,
            //         height: 200,
            //         fit: BoxFit.cover,
            //       ),
            //       Image.asset('assets/images/T-Shirt pic.jpg',
            //         width: 200,
            //         height: 200,
            //         fit: BoxFit.cover,
            //       ),
            //       Image.asset('assets/images/T-Shirt pic.jpg',
            //         width: 200,
            //         height: 200,
            //         fit: BoxFit.cover,
            //       ),
            //       Image.asset('assets/images/T-Shirt pic.jpg',
            //         width: 200,
            //         height: 200,
            //         fit: BoxFit.cover,
            //       )
            //     ],
            //   ),
            // ),
            body: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Image.asset('assets/images/T-Shirt pic.jpg',
                        height: 150,
                        width: 150,
                        fit: BoxFit.cover,
                      ),
                      Image.asset('assets/images/T-Shirt pic.jpg',
                        height: 150,
                        width: 150,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                  Image.asset('assets/images/T-Shirt pic.jpg',
                    height: 150,
                    width: 150,
                    fit: BoxFit.cover,
                  ),
                  Image.asset('assets/images/T-Shirt pic.jpg',
                    height: 150,
                    width: 150,
                    fit: BoxFit.cover,
                  ),
                  Image.asset('assets/images/T-Shirt pic.jpg',
                    height: 150,
                    width: 150,
                    fit: BoxFit.cover,
                  ),
                  Image.asset('assets/images/T-Shirt pic.jpg',
                    height: 150,
                    width: 150,
                    fit: BoxFit.cover,
                  ),
                  Image.asset('assets/images/T-Shirt pic.jpg',
                    height: 150,
                    width: 150,
                    fit: BoxFit.cover,
                  ),
                  Image.asset('assets/images/T-Shirt pic.jpg',
                    height: 150,
                    width: 150,
                    fit: BoxFit.cover,
                  )
                ],
              ),
            )
        )
    );

  }

}

