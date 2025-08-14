import 'package:flutter/material.dart';

void main() {
  runApp(const App803());
}

class App803 extends StatelessWidget {
  const App803({super.key});

@override
  Widget build(BuildContext context) => MaterialApp(
    home: HomePage(),
  );


}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  var varEmail = TextEditingController();
  var varCtrlPWD = TextEditingController();
  var varCtrlName = TextEditingController(); // เพิ่มตัวแปรควบคุม Name
  String varStr = '';
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: const Text('textField'),
    ),
    body: Center(
      child: SizedBox(
        width: 350,
        child: Column(
          children: [
            SizedBox(height: 30,),
            Text('Email    ',),
            textFieldEmail(),
             SizedBox(height: 30,),
            Text('Password    ',),
            TextFieldPWD(),
             SizedBox(height: 30,),
            Text('Name    ',),
            textFieldName(), // เพิ่ม TextFieldName ที่ Scaffold
             SizedBox(height: 30,),
            Text('String    ',),
            Text('$varStr'),
          
          ],
        ),
      ),
  ),
  );
//1-------------------------------------------------------------
OutlineInputBorder outlineBorder() => const OutlineInputBorder(
  borderSide: BorderSide(
    color: Colors.grey,
    width: 2,
  ),
);
//2-------------------------------------------------------------
TextStyle textStyle() => const TextStyle(
  color: Colors.indigo,
  fontSize: 20,
  fontWeight: FontWeight.normal,
);
//3-------------------------------------------------------------
Widget textFieldEmail() => TextField(
  controller: varEmail, // ตัวควบคุมจัดการข้อความ
  decoration: InputDecoration(
    labelText: 'Email',
    border: outlineBorder(),
  ), // เกี่ยวกับรูปแบบของ TextField
  keyboardType: TextInputType.emailAddress, // ประเภทหรือรูปแบบของแป้นพิมพ์คีย์บอร์ด
  style: textStyle(), // รูปแบบ Text
  onChanged: (text) => updateText(), // เมื่อแก้ไขข้อความ
  onSubmitted: null, // กำหนดการตอบสนองเมื่อกดปุ่ม Enter
);
//4-------------------------------------------------------------
Widget TextFieldPWD() => TextField(
  controller: varCtrlPWD, // ตัวควบคุมจัดการข้อความ
  decoration: InputDecoration(
    labelText: 'Password',
    border: outlineBorder(),
  ), // เกี่ยวกับรูปแบบของ TextField
  obscureText: true, // ซ่อนข้อความที่ป้อน
  keyboardType: TextInputType.text, // ประเภทหรือรูปแบบของแป้นพิมพ์คีย์บอร์ด
  style: textStyle(), // รูปแบบ Text
  onChanged: (text) => updateText(), // เมื่อแก้ไขข้อความ
  onSubmitted: null, // กำหนดการตอบสนองเมื่อกดปุ่ม Enter
);

//5-------------------------------------------------------------
Widget textFieldName() => TextField(
  controller: varCtrlName, // ตัวควบคุมจัดการข้อความ
  decoration: InputDecoration(
    labelText: 'Name',
    border: outlineBorder(),
  ),
  keyboardType: TextInputType.text,
  style: textStyle(),
  onChanged: (text) => updateText(),
  onSubmitted: null,
);
//6-------------------------------------------------------------

void updateText() => setState(() {
  varStr = 'Email: ${varEmail.value.text}\n';
  varStr += 'Password: ${varCtrlPWD.value.text}\n';
  varStr += 'Name: ${varCtrlName.value.text}\n'; // เพิ่มส่วนของ Name
});
//finish-------------------------------------------------------------
}