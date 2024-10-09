import 'package:flutter/material.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {

  int numCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter App', style: TextStyle(fontWeight: FontWeight.w500),),
      ),
      
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(onPressed: restart, child: Icon(Icons.refresh_sharp),),
          SizedBox(width: 100,),
          FloatingActionButton(onPressed: increment, child: Icon(Icons.add),),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: bodyContainer(numCounter),
    );
  }

  bodyContainer(int counter) => Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
            Text(
              'You have clicked the add icon:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            Text('$counter times', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),)
      ],
    ),
  );

  increment(){
    setState(() {
      numCounter++;
    });
  }

  restart(){
    setState(() {
      numCounter = 0;
    });
  }
}

