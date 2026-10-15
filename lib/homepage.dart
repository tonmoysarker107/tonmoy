/*import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
        // leading: const Icon(Icons.home),
        backgroundColor: Colors.blue,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.person)),
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: const Text("Chadman"),
              accountEmail: const Text("Email"),
              currentAccountPicture: Icon(Icons.person),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text("Home"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.contact_page),
              title: const Text("Contact"),
              splashColor: Colors.red,
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text("Profile"),
              splashColor: const Color.fromARGB(255, 111, 13, 240),
              onTap: () {},
            ),
            Spacer(),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text("Logout"),
              splashColor: Colors.red,
              onTap: () {},
            ),
          ],
        ),
      ),

      body: Center(
        child: Text(
          "Hello, Welcome",
          style: GoogleFonts.lobster(
            textStyle: const TextStyle(
              fontSize: 20,
              color: Color.fromARGB(255, 216, 21, 223),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color.fromARGB(255, 40, 172, 8),
        foregroundColor: const Color.fromARGB(255, 17, 8, 11),
        hoverColor: Colors.indigoAccent,
        shape: const BeveledRectangleBorder(),
        child: const Icon(Icons.add),
      ),
    );
  }
}
*/
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home page"),
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        foregroundColor: const Color.fromARGB(255, 237, 233, 233),

        actions: [
          IconButton(
            onPressed: () {},
            tooltip: "Search",
            icon: Icon(Icons.search),
          ),

          IconButton(
            onPressed: () {},
            tooltip: "Settings",
            icon: Icon(Icons.settings),
          ),
          // Container(
          //   height: 40, //can make large container . suitable for column
          //   width: 40,
          //   margin: EdgeInsets.all(20),
          //   padding: EdgeInsets.all(10),
          //   decoration: BoxDecoration(
          //     color: const Color.fromARGB(255, 115, 150, 160),
          //     borderRadius: BorderRadius.circular(20),
          //   ),
          // ),
        ],
      ),

      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 12, 89, 110),
              ),
              accountName: Text("Tonmoy Sarker"),
              accountEmail: Text("tonmoysarker@gmail.com"),
              currentAccountPicture: Icon(
                Icons.person,
                size: 50,
                color: Colors.white,
              ),
            ),

            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {},
            ),

            Divider(),

            ListTile(
              leading: Icon(Icons.contacts),
              title: Text("Contact"),
              onTap: () {},
            ),

            Spacer(),

            ListTile(
              leading: Icon(Icons.person),
              trailing: IconButton(onPressed: () {}, icon: Icon(Icons.person)),
              title: Text("Profile"),
              onTap: () {},
            ),
          ],
        ),
      ),

      backgroundColor: const Color.fromARGB(255, 8, 178, 235),

      body: Column(
        children: [
          SizedBox(height: 20),
          // can use diffeent widget
          Center(
            //raw or colum
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 115, 150, 160),
                    foregroundColor: Colors.white,
                    side: BorderSide(color: Colors.white),
                    fixedSize: Size(110, 40),
                  ),
                  child: Text("Text Button"),
                ),

                SizedBox(height: 8),

                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 115, 150, 160),
                    foregroundColor: Colors.white,
                    side: BorderSide(color: Colors.white),
                  ),
                  child: Text("Elevated Button"),
                ),

                SizedBox(height: 8),

                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 170, 195, 201),
                    foregroundColor: const Color.fromARGB(255, 60, 80, 85),
                    side: BorderSide(
                      color: const Color.fromARGB(255, 239, 243, 244),
                    ),
                  ),
                  child: Text("Outlined Button"),
                ),

                SizedBox(height: 8),

                IconButton(
                  onPressed: () {},
                  tooltip: "Icon Button",
                  style: IconButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 115, 150, 160),
                    foregroundColor: Colors.white,
                    side: BorderSide(color: Colors.white),
                    fixedSize: Size(150, 40),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  icon: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.touch_app),
                      SizedBox(width: 4),
                      Text("Icon Button"),
                    ],
                  ),
                ),

                //experiment
                Container(
                  height: 300,
                  width: 300,
                  margin: const EdgeInsets.all(20),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 115, 150, 160),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: Text(
                        'Hello Flutter',
                        style: GoogleFonts.aleo(
                          textStyle: const TextStyle(
                            fontSize: 36,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 60, 80, 85),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Expanded(
          //   child: Center(
          //     child: MouseRegion(
          //       cursor: SystemMouseCursors.click,
          //       child: Text(
          //         "Hello Flutter",
          //         style: GoogleFonts.aleo(
          //           textStyle: TextStyle(
          //             fontSize: 45,
          //             fontWeight: FontWeight.bold,
          //             color: const Color.fromARGB(255, 60, 80, 85),
          //           ),
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
        ],
      ),

      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   tooltip: "Add",
      //   backgroundColor: const Color.fromARGB(255, 115, 150, 160),
      //   foregroundColor: Colors.white,
      //   child: Icon(Icons.add),
      // ),
    );
  }
}
