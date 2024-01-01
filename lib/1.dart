import 'package:flutter/material.dart';

class HomeWidget1 extends StatefulWidget{
  const HomeWidget1({super.key});

  @override
  State<HomeWidget1> createState() => _HomeWidget1_State();
}
class _HomeWidget1_State extends State<HomeWidget1> {
  int current_index = 0;
  @override
  Widget build(BuildContext context){
    var widgets = [
      Text('1'),
      Text('2'),
      OutlinedButton(onPressed: (){setState(() {
        current_index = 0;
      });}, child: Text('Вернуться'))
    ];
    return Scaffold(
      body: Center(child: widgets[current_index]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: current_index,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: '1'),
          BottomNavigationBarItem(icon: Icon(Icons.account_balance_sharp), label: '2'),
          BottomNavigationBarItem(icon: Icon(Icons.ac_unit_rounded), label: 'button'),
        ],
        onTap: (newIndex){
          setState(() {
            current_index = newIndex;
          });
        },
      ),
    );
  }
}