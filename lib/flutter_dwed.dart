import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyDwedProject());
}

class MyDwedProject extends StatefulWidget {
  const MyDwedProject({super.key});

  @override
  State<MyDwedProject> createState() => _MyDwedProjectState();
}

class _MyDwedProjectState extends State<MyDwedProject> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Container(
              width: double.infinity,
              height: 300,
              color: Colors.blue,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Image(
                    image: AssetImage("assets/images/Logo.png"),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Create Account",
                    style: TextStyle(
                        fontSize: 35,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Connect with your friends today",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 35,
                  )
                ],
              ),
            ),
            const Padding(
              padding:EdgeInsets.all(20),
               child: TextField(
                decoration:InputDecoration(labelText: "Dd/Mm/Yy"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
