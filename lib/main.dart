import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyShopProject());
}

class MyShopProject extends StatefulWidget {
  const MyShopProject({super.key});

  @override
  State<MyShopProject> createState() => _MyShopProjectState();
}

class _MyShopProjectState extends State<MyShopProject> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        drawer: const Drawer(
          backgroundColor: Colors.black54,
        ),
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Center(child: Text('Apple Products'),),
          actions: const [
            Icon(Icons.rectangle),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 235,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://www.iphones.ru/wp-content/uploads/2021/07/macOS-Handheld-PC-1.jpg"),
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Text(
                        "Lifestyle Sale",
                        style: TextStyle(
                          fontSize: 32,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shadowColor: Colors.red,
                            backgroundColor: Colors.white,
                            fixedSize: const Size(250, 40)),
                        onPressed: () {},
                        child: const Text(
                          "Shop Now",
                          style: TextStyle(
                              color: Color.fromARGB(255, 110, 110, 110),
                              fontSize: 12),
                        ),
                      ),
                      const SizedBox(
                        height: 44,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
              GridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 4,
                  crossAxisSpacing: 4,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    Container(
                      color: Colors.amber,
                    ),
                    Container(
                      color: Colors.amber,
                    ),
                    Container(
                      color: Colors.amber,
                    ),
                    Container(
                      color: Colors.amber,
                    ),
                     Container(
                      color: Colors.amber,
                    ),
                     Container(
                      color: Colors.amber,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
