import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar
        (
        title: Text("Fractionally SizedBox Example"),
        centerTitle: true,
        backgroundColor: Colors.deepOrangeAccent,
      ),


      body: SafeArea(
        child:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 300,
                width: 300,
                color: Colors.red,
                child: FractionallySizedBox(
                  heightFactor: 0.5,
                  widthFactor: 0.5,
                  child: Container(
                    color: Colors.cyan,
                    child: Center(child: Text("2nd container"),),
                  ),
                ),
              )
            ],


          ),
        ),
      ),
    );
  }
}
