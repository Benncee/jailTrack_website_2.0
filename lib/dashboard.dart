import 'package:flutter/material.dart';
import 'package:flutter_application_2/approve_sched_page.dart';
import 'package:flutter_application_2/escort_tracking.dart';
import 'package:flutter_application_2/main.dart';
import 'package:flutter_application_2/notification_page.dart';
import 'package:flutter_application_2/scheduling_system.dart';

class DashBoardPage extends StatefulWidget {
  const DashBoardPage({Key? key}) : super(key: key);

  @override
  _DashBoardPageState createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor:
            Colors.grey[900], // Dark grey color for the app bar background
        title: const Text(
          'JAILTRACK',
          style: TextStyle(
              color: Colors.white), // White color for the app bar text
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const MyApp()),
              );
            },
            child: const Text(
              'Logout',
              style: TextStyle(
                  color: Colors.white), // White color for the logout text
            ),
          ),
        ],
      ),

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.grey,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Image.asset(
                  'icons/dashboardlogo.png', // Ensure the asset exists
                  width: 24, // Adjust width if needed
                  height: 24, // Adjust height if needed
                ),
              ),
              title: const Text(
                'Dashboard',
                style: TextStyle(
                    color: Color.fromARGB(
                        255, 0, 0, 0)), // Changed text color to white
              ),
              onTap: () {
                // Navigate to Dashboard page
                Navigator.pop(context); // Close the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DashBoardPage()),
                );
              },
            ),
            ListTile(
              leading: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Image.asset(
                  'icons/notificationlogo.png', // Ensure the asset exists
                  width: 24, // Adjust width if needed
                  height: 24, // Adjust height if needed
                ),
              ),
              title: const Text(
                'Notification',
                style: TextStyle(
                    color: Color.fromARGB(
                        255, 0, 0, 0)), // Changed text color to white
              ),
              onTap: () {
                // Navigate to Notification page
                Navigator.pop(context); // Close the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const NotificationPage()),
                );
              },
            ),
            ListTile(
              leading: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Image.asset(
                  'icons/schedlogo.png', // Ensure the asset exists
                  width: 24, // Adjust width if needed
                  height: 24, // Adjust height if needed
                ),
              ),
              title: const Text(
                'Scheduling System',
                style: TextStyle(
                    color: Color.fromARGB(
                        255, 0, 0, 0)), // Changed text color to white
              ),
              onTap: () {
                // Navigate to Scheduling System page
                Navigator.pop(context); // Close the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ScheduleSystemPage()),
                );
              },
            ),
            ListTile(
              leading: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Image.asset(
                  'icons/viewofficerlogo.png', // Ensure the asset exists
                  width: 24, // Adjust width if needed
                  height: 24, // Adjust height if needed
                ),
              ),
              title: const Text(
                'View Officers',
                style: TextStyle(
                    color: Color.fromARGB(
                        255, 0, 0, 0)), // Changed text color to white
              ),
              onTap: () {
                // Navigate to View Officers page
                Navigator.pop(context); // Close the drawer
                Navigator.push(
                  context,
                MaterialPageRoute(builder: (context) => const EscortTrackingPage())
                );
              },
            ),
            ListTile(
              leading: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Image.asset(
                  'icons/officerreqlogo.png', // Ensure the asset exists
                  width: 24, // Adjust width if needed
                  height: 24, // Adjust height if needed
                ),
              ),
              title: const Text(
                'Officer Request',
                style: TextStyle(
                    color: Color.fromARGB(
                        255, 0, 0, 0)), // Changed text color to white
              ),
              onTap: () {
                // Navigate to Officer Request page
                Navigator.pop(context); // Close the drawer
                Navigator.push(
                  context,
                MaterialPageRoute(builder: (context) => const ApproveSchedPage()),
                );
              },
            ),
            ListTile(
              leading: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Image.asset(
                  'icons/attendancelogo.png', // Ensure the asset exists
                  width: 24, // Adjust width if needed
                  height: 24, // Adjust height if needed
                ),
              ),
              title: const Text(
                'Attendance List',
                style: TextStyle(
                    color: Color.fromARGB(
                        255, 0, 0, 0)), // Changed text color to white
              ),
              onTap: () {
                // Navigate to Attendance List page
                Navigator.pop(context); // Close the drawer
                // Add navigation logic here
              },
            ),
            ListTile(
              leading: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Image.asset(
                  'icons/settingslogo.png', // Ensure the asset exists
                  width: 24, // Adjust width if needed
                  height: 24, // Adjust height if needed
                ),
              ),
              title: const Text(
                'Settings',
                style: TextStyle(
                    color: Color.fromARGB(
                        255, 0, 0, 0)), // Changed text color to white
              ),
              onTap: () {
                // Navigate to Settings page
                Navigator.pop(context); // Close the drawer
                // Add navigation logic here
              },
            ),
          ],
        ),
      ),


      onDrawerChanged: (isOpen) {
        setState(() {
         
        });
      },
      body: SingleChildScrollView(
        child: Stack(
          children: [
            buildBackground(),
            buildMainContent(context),
          ],
        ),
      ),
    );
  }

  Widget buildBackground() {
    return ColorFiltered(
      colorFilter: ColorFilter.mode(
          Color.fromARGB(255, 9, 9, 9).withOpacity(0.35), BlendMode.dstATop),
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              'https://i0.wp.com/governmentph.com/wp-content/uploads/2018/09/How-to-Apply-to-BJMP-Process.png?fit=1200%2C628&ssl=1',
            ),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  Widget buildMainContent(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width - 20,
        height: MediaQuery.of(context).size.height - kToolbarHeight - 20,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
        ),
        padding: const EdgeInsets.all(20.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 1,
                shrinkWrap: true,
                children: List.generate(4, (index) {
                  return Container(
                    decoration: BoxDecoration(
                      color: [
                        Colors.red,
                        Colors.blue,
                        Colors.green,
                        Colors.yellow
                      ][index % 4],
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: Text(
                        'Container ${index + 1}',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  );
                }),
              ),
            ),
            const SizedBox(width: 20), // Space between columns
            Expanded(
              flex: 2,
              child: Table(
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                columnWidths: const {
                  0: FlexColumnWidth(),
                  1: FlexColumnWidth(),
                  2: FlexColumnWidth(),
                  3: FlexColumnWidth(),
                  4: FlexColumnWidth(),
                  5: FlexColumnWidth(),
                  6: FlexColumnWidth(),
                },
                border: TableBorder.all(color: Colors.black),
                children: List.generate(
                    3,
                    (index) => TableRow(
                          children: List.generate(
                              7,
                              (index) => Container(
                                    height: 60,
                                    alignment: Alignment.center,
                                    child: Text('Cell $index'),
                                  )),
                        )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
