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
  Color back = const Color(0xFFF2F2F2);
  Color orange = const Color(0xFFFA4A0C);
  Color searchBack = const Color(0xFFEFEEEE);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyTheme.defaultTheme,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: back,
        appBar: AppBar(
          backgroundColor: back,
          foregroundColor: Colors.black,
          elevation: 0,
          leading: GestureDetector(
            onTap: () {/* Write listener code here */},
            child: Image.asset('icons/menu.png'),
          ),
          actions: [
            Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: () {},
                  child: Image.asset('icons/shopping-cart.png'),
                )),
          ],
        ),
        body: Container(
          color: Colors.green,
          child: Column(
            children: [
              const SizedBox(
                height: 43,
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(18, 0, 150, 0),
                child: Text(
                  "Delicious food for you",
                  style:
                      TextStyle(fontSize: 34, fontFamily: 'SFProRoundedBold'),
                ),
              ),
              const SizedBox(
                height: 28,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child:
                    _textField(const AssetImage('icons/search.png'), 'Search'),
              ),
              _bottomNavigationBar(),
            ],
          ),

        ),
        bottomSheet: ,
      ),
    );
  }

  Container _textField(AssetImage image, String label) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
        child: TextField(
          cursorColor: const Color(0xFFFA4A0C),
          decoration: InputDecoration(
            fillColor: searchBack,
            filled: true,
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 35, vertical: 21),
            prefixIcon: Image(image: image),
            border: const OutlineInputBorder(),
            hintText: label,
            hintStyle: const TextStyle(
              fontFamily: 'SFProRoundedSemibold',
              fontWeight: FontWeight.bold,
              fontSize: 17,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
        ),
      ),
    );
  }

  Expanded _bottomNavigationBar() {
    return Expanded(
      child: Align(
        alignment: FractionalOffset.bottomCenter,
        child: Container(
          child: Row(
            children: [
              Column(
                children: [Image(image: AssetImage('icons/home.png'))],
              )
            ],
          ),
        ),
      ),
    );
  }
}
