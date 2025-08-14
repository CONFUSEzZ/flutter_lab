import 'package:flutter/material.dart';

void main() {
  runApp(const App801());
}

class App801 extends StatelessWidget {
  const App801({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
    home : Scaffold(
      appBar: AppBar(
        title: const Text('App 801'),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 30),
            textBotton(),
            elevatedBotton(),
            outlinedBotton(), // <-- เพิ่มปุ่มนี้เข้าไป
          ],
        ),
      ),
    )
  );

  Widget textBotton() => TextButton(
    onPressed: null, 
    child: Text('text button',
      style: TextStyle(
        color: Colors.blue,
        fontSize: 20,
        fontWeight: FontWeight.bold,
        fontFamily: 'Tahoma',
      ),
    )
  );

  Widget elevatedBotton() => ElevatedButton(
    onPressed: (){},
    style : ElevatedButton.styleFrom(
      backgroundColor: Colors.lightBlue,
      foregroundColor: Colors.white,
      shape: const StadiumBorder()
    ),
    child: const Text(
      'elevated button',
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold, // <-- เพิ่ม comma ตรงนี้
      ),
    ),
  );
  Widget outlinedBotton() => OutlinedButton(
    onPressed: (){},
    child: Text(
      'outlined button',
      style: TextStyle(
        fontSize: 20,),),
       style : OutlinedButton.styleFrom(
        side: const BorderSide(
          color: Colors.black26,
          width: 1.2,
          style: BorderStyle.solid
        ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0), // <-- เพิ่ม comma ตรงนี้
      )
    ),
  );

}