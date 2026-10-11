import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HomePage"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 199, 58, 199),
        foregroundColor: Colors.white,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.person)),
        ],
      ),

      drawer: Drawer(
        child: Column(
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text("Name"),
              accountEmail: Text("Email"),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 194, 98, 221),
              ),
            ),
            ListTile(
              title: const Text("Homepage"),
              leading: const Icon(Icons.home),
              hoverColor: const Color.fromARGB(255, 135, 62, 162),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const Divider(),
            const Spacer(),
            ListTile(
              title: const Text("Profile"),
              leading: const Icon(Icons.person),
              hoverColor: const Color.fromARGB(255, 169, 55, 198),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
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
                          58,
                          121,
                          130,
                        ),
                        foregroundColor: Colors.white,
                        fixedSize: const Size(100, 40),
                        side: const BorderSide(),
                      ),
                      child: const Text("TextButton"),
                    ),
                    const SizedBox(width: 10),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 11, 99, 119),
                        foregroundColor: Colors.white,
                        fixedSize: const Size(150, 40),
                        side: const BorderSide(),
                      ),
                      child: const Text("ElevatedButton"),
                    ),
                    const SizedBox(width: 15),
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
                        fixedSize: const Size(150, 40),
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
              child: const Text("A little space"),
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: "Add",
        foregroundColor: Colors.white,
        shape: const BeveledRectangleBorder(),
        backgroundColor: const Color.fromARGB(255, 11, 56, 62),
        child: const Icon(Icons.add),
      ),
    );
  }
}
