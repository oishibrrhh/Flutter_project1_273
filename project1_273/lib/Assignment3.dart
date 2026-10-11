import 'package:flutter/material.dart';

class Assignment3 extends StatelessWidget {
  const Assignment3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Homepage"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 150, 54, 201),
        foregroundColor: Colors.white,
      ),
      body: const Assignment3Body(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: "Add",
        backgroundColor: const Color.fromARGB(255, 150, 54, 201),
        foregroundColor: Colors.white,
        child: const Icon(Icons.add),
      ),
    );
  }
}

class Assignment3Body extends StatelessWidget {
  const Assignment3Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // Buttons
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 88, 157, 169),
                      foregroundColor: Colors.white,
                      fixedSize: const Size(120, 45),
                      side: const BorderSide(),
                    ),
                    child: const Text("TextButton"),
                  ),

                  const SizedBox(width: 10),

                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 120, 42, 168),
                      foregroundColor: Colors.white,
                      fixedSize: const Size(160, 45),
                      side: const BorderSide(),
                    ),
                    child: const Text("ElevatedButton"),
                  ),

                  OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 230, 210, 255),
                      foregroundColor: const Color.fromARGB(255, 52, 136, 136),
                      fixedSize: const Size(160, 45),
                      side: const BorderSide(
                        color: Color.fromARGB(255, 52, 136, 136),
                        width: 2,
                      ),
                    ),
                    child: const Text("OutlinedButton"),
                  ),

                  const SizedBox(width: 10),

                  IconButton(onPressed: () {}, icon: const Icon(Icons.login)),
                ],
              ),
            ),
          ),

          Center(
            // Circular Gradient Container
            child: Container(
              height: 250,
              width: 250,
              padding: const EdgeInsets.all(30),
              margin: const EdgeInsets.all(20),
              alignment: Alignment.topCenter,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  width: 5,
                  color: const Color.fromARGB(255, 151, 58, 182),
                ),
                gradient: const RadialGradient(
                  colors: [
                    Color.fromARGB(255, 219, 85, 134),
                    Color.fromARGB(255, 219, 85, 134),
                  ],
                ),
              ),
              child: const Text(
                "A little space",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
