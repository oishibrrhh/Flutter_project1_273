import 'package:flutter/material.dart';

class Assignment3 extends StatelessWidget {
  const Assignment3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        title: const Text("Assignment 3"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 150, 54, 201),
        foregroundColor: Colors.white,
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            // Card
            SizedBox(
              height: 200,
              width: 200,
              child: Card(
                margin: const EdgeInsets.all(5),
                color: const Color.fromARGB(255, 82, 34, 255),
                shadowColor: Colors.deepPurpleAccent,
                elevation: 20,
                shape: const BeveledRectangleBorder(),

                child: const Center(
                  child: Text(
                    "Hello card",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            // Image from assets folder
            Image.asset(
              'assets/images/download (1).jpg',
              height: 400,
              width: 500,
              fit: BoxFit.contain,
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),

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
