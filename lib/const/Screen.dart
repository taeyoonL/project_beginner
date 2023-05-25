import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.red,
            Colors.yellow,
          ],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _IMG(
            onTap: onTap,
          ),
          SizedBox(height: 30.0),
          _Text1(),
        ],
      ),
    );
  }
  void onTap(){
    return runApp(
      MaterialApp(
        home: POP(),
      ),
    );
  }
}

class _Text1 extends StatelessWidget {
  _Text1({Key? key}) : super(key: key);
  TextStyle textStyle = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.w400,
    fontSize: 30.0,
  );
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
            'Click this ',
          style: textStyle,
        ),
        Text(
          'IMAGE',
          style: textStyle.copyWith(
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}

class _IMG extends StatelessWidget {
  final GestureTapCallback onTap;
  const _IMG({
    required this.onTap,
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Image.asset(
        'lib/asset/image/captain_shield.jfif',
      ),
    );
  }
}

class POP extends StatelessWidget {
  const POP({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text('My Zone'),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: (){
                runApp(
                  MaterialApp(
                    home: HomeScreen(),
                  ),
                );
              },
              icon: Icon(
                Icons.home,
              ),
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.yellow,
              Colors.blue,
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('HELLO'),
            Text('Good'),
            Text('BYE'),
          ],
        ),
      ),
    );
  }
}