import 'package:flutter/material.dart';

class HomeWidget2 extends StatefulWidget{
  const HomeWidget2({super.key});

  @override
  State<HomeWidget2> createState() => _HomeWidget2_State();
}
class _HomeWidget2_State extends State<HomeWidget2> {
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
      bottomNavigationBar: NavigationBar(
        selectedIndex: current_index,
        destinations: [
          NavigationDestination(icon: Icon(Icons.cabin), label: '1'),
          NavigationDestination(icon: Badge(child: Icon(Icons.access_time), label: Text('2'),), label: '2'),
          NavigationDestination(icon: Badge(child: Icon(Icons.add)), label: '3'),
        ],
        onDestinationSelected: (new_index){
          setState(() {
            current_index = new_index;
          });
        }
      ),
    );
  }
}