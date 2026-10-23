import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HomePage"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 92, 137, 155),
        foregroundColor: Colors.white,

        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.person)),
        ],
      ),

      // Drawer
      drawer: Drawer(
        child: Column(
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text("Name"),
              accountEmail: Text("Email"),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 94, 131, 155),
              ),
            ),

            ListTile(
              title: const Text("Homepage"),
              leading: const Icon(Icons.home),
              hoverColor: const Color.fromARGB(255, 119, 157, 167),
              onTap: () {
                Navigator.pop(context);
              },
            ),

            const Divider(),

            const Spacer(),

            ListTile(
              title: const Text("Profile"),
              leading: const Icon(Icons.person),
              hoverColor: const Color.fromARGB(255, 84, 120, 129),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),

      // Body
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Scrollable Buttons
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(10),

                child: Row(
                  children: [
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        backgroundColor: const Color.fromARGB(
                          255,
                          128,
                          173,
                          194,
                        ),
                        foregroundColor: const Color.fromARGB(255, 49, 55, 58),
                        fixedSize: const Size(120, 40),
                        side: const BorderSide(),
                      ),
                      child: const Text("TextButton"),
                    ),

                    const SizedBox(width: 10),

                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(
                          255,
                          83,
                          147,
                          158,
                        ),
                        foregroundColor: Colors.white,
                        fixedSize: const Size(150, 40),
                        side: const BorderSide(),
                      ),
                      child: const Text("ElevatedButton"),
                    ),

                    const SizedBox(width: 10),

                    OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(
                          255,
                          230,
                          210,
                          255,
                        ),
                        foregroundColor: const Color.fromARGB(
                          255,
                          52,
                          136,
                          136,
                        ),
                        fixedSize: const Size(160, 40),
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

            // Gradient Container
            Container(
              height: 200,
              width: 200,
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.all(20),
              alignment: Alignment.bottomRight,

              decoration: BoxDecoration(
                border: Border.all(
                  width: 5,
                  color: const Color.fromARGB(255, 24, 107, 104),
                ),

                borderRadius: BorderRadius.circular(25),

                gradient: const RadialGradient(
                  colors: [
                    Color.fromARGB(255, 12, 101, 101),
                    Color.fromARGB(255, 8, 99, 121),
                  ],
                ),
              ),

              child: const Text(
                "A little space",
                style: TextStyle(color: Colors.white),
              ),
            ),

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

            // Image from assets
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

      // Floating Action Button
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: "Add",
        foregroundColor: Colors.white,
        shape: const BeveledRectangleBorder(),
        backgroundColor: const Color.fromARGB(255, 65, 116, 129),
        child: const Icon(Icons.add),
      ),
    );
  }
}
