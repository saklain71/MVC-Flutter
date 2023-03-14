import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mvc_flutter/Controllers/controller.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final Controller _controller = Controller();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(

          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(_controller != null ? '${_controller.counter}' :"0",
              style: TextStyle(
                fontSize: 30
              ),),
              SizedBox(height: 50,),
              Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: (){
                        setState(() {
                          _controller.increment();
                        });
                      },
                      child: Icon(Icons.add,color: Colors.blue,)),
                  TextButton(
                      onPressed: (){
                        setState(() {
                          _controller.decrement();
                        });
                      },
                      child: Icon(Icons.remove,color: Colors.blue,)),

                ],
              )
            ],
          ),
        )
    );
  }
}
