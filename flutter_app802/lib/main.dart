import 'package:flutter/material.dart';

void main() {
  runApp(const App802());
}

class App802 extends StatelessWidget {
  const App802({super.key});

@override
  Widget build(BuildContext context) => MaterialApp(
    home : HomePage(),
  );
 
  }

class HomePage extends StatefulWidget {
 @override
  State<StatefulWidget> createState() => HOmePageState();
  
  
}

class HOmePageState extends State<HomePage> {
  int _value = 0;
@override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text('App 802'),
    ),
    body: Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          btnMinus(),
          SizedBox(width: 20),
          Text('$_value', style: TextStyle(fontSize: 30)   ),
          btnplus()
        ]
      ),
    ),
  ); 
    

  Widget btnMinus() => OutlinedButton(
    onPressed: () {
     if (_value > 0) {
     setState(() => _value-= 1);    
    
     }
    }, 
    style: OutlinedButton.styleFrom(
      side: const BorderSide(
        color: Colors.black26,
        width: 1.2,
        style: BorderStyle.solid
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0)
      )
    ),
    child: const Text(
      ' - ',
      style: TextStyle(fontSize: 30),
    ),
  );
  Widget btnplus() => OutlinedButton(
    onPressed: () => setState(() => _value += 1),
    style: OutlinedButton.styleFrom(
      side: const BorderSide(
        color: Colors.black26,
        width: 1.2,
        style: BorderStyle.solid
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0)
      )
    ),
    child: const Text(
      ' + ',
      style: TextStyle(fontSize: 30),
    ),
  );
  }

