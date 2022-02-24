import 'package:flutter/material.dart';
import 'Theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int state = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyTheme.defaultTheme,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFFF2F2F2),
        appBar: AppBar(
          backgroundColor: const Color(0xFFF2F2F2),
          foregroundColor: Colors.black,
          elevation: 0,
          leading: GestureDetector(
              onTap: () { /* Write listener code here */ },
              child: Image.asset('icons/menu.png'),
            ),
          
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child:  Image.asset('icons/shopping-cart.png'),
              )
            ),
          ],
        ),
        body: Column(
          
          children: 
            const [
              Padding(
                padding: EdgeInsets.only(left: 18),
                child: Text("Delicious food for you",
                  style: TextStyle(
                    fontSize: 34,
                    fontFamily: 'SFProRoundedBold'
                  ),
                ),
              )
             ],
        ),
      ),
    );
  }
}
