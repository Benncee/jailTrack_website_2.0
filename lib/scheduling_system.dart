import 'package:flutter/material.dart';
import 'package:flutter_application_2/approve_sched_page.dart';
import 'package:flutter_application_2/attendance_list_page.dart';
import 'package:flutter_application_2/dashboard.dart';
import 'package:flutter_application_2/font_page_of_scheduling.dart';
import 'package:flutter_application_2/main.dart';
import 'package:flutter_application_2/notification_page.dart';
import 'package:flutter_application_2/setting_page.dart';
import 'package:flutter_application_2/view_officer_tracking.dart';
import 'package:intl/intl.dart';

class ScheduleSystemPage extends StatefulWidget {
  const ScheduleSystemPage({Key? key}) : super(key: key);

  @override
  _ScheduleSystemPageState createState() => _ScheduleSystemPageState();
}

class Shift {
  final String userId;
  final String officerName;
  final String designation;
  final DateTime startDate;
  final DateTime endDate;
  final TimeOfDay startTime;
  final TimeOfDay endTime;

  Shift({
    required this.userId,
    required this.officerName,
    required this.designation,
    required this.startDate,
    required this.endDate,
    required this.startTime,
    required this.endTime,
  });
}

class _ScheduleSystemPageState extends State<ScheduleSystemPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  DateTime currentDate = DateTime.now();
  String? designation;
  List<String> designations = ['Patrol', 'Investigation', 'Traffic', 'K9 Unit'];
  List<Shift> shifts = [];

  @override
  Widget build(BuildContext context) {
    String formattedDate = DateFormat('MMMM yyyy').format(currentDate);
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor:
            Colors.grey[900], // Dark grey color for the app bar background
        titleSpacing:
            0.0, // Remove default spacing between title and leading widget

        title: Row(
          children: [
            Image.asset(
              'icons/JailTrackLogo.png', // Provide the path to your logo image
              height: 60,
              width: 60, // Adjust the height of the logo as needed
            ),
            const SizedBox(width: 8), // Add space between logo and title
            const Text(
              'JAILTRACK',
              style: TextStyle(
                color: Colors.white,
              ), // White color for the app bar text
            ),
          ],
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
                color: Colors.white,
              ), // White color for the logout text
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
                'JailTrack',
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
                  MaterialPageRoute(
                      builder: (context) => FrontschedulingPage()),
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
                    MaterialPageRoute(
                        builder: (context) => ViewOfficersPage()));
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
                  MaterialPageRoute(
                      builder: (context) => const ApproveSchedPage()),
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
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AttendanceListPage()),
                );
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
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SettingsPage()),
                );
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Container(
          width: 1150,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(5)),
          child: Padding(
            padding: const EdgeInsets.only(top: 15.0, left: 15.0, right: 15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {}, // Auto Shift Options logic
                      child: Text('Auto Shift Options',
                          style: TextStyle(color: Colors.black)),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange),
                    ),
                    SizedBox(width: 30),
                    Text(formattedDate,
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black)),
                    SizedBox(width: 30),
                    ElevatedButton(
                      onPressed: () {}, // Publish & Notify logic
                      child: Text('Publish & Notify',
                          style: TextStyle(color: Colors.black)),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.lightGreen),
                    ),
                    SizedBox(width: 30),
                    IconButton(
                      icon: Icon(Icons.add, color: Colors.black),
                      onPressed:
                          _showAddScheduleDialog, // Show the dialog when this icon is pressed
                    ),
                  ],
                ),
                SizedBox(height: 20), // For spacing
                Table(
                  defaultColumnWidth: FixedColumnWidth(115.0),
                  border: TableBorder.all(
                      style: BorderStyle.none), // Removed outlines
                  children: [
                    TableRow(
                      decoration: BoxDecoration(
                          color:
                              Colors.grey[800]), // Background color for header
                      children: [
                        for (var day in [
                          'Rank/Name',
                          'Sun',
                          'Mon',
                          'Tues',
                          'Wed',
                          'Thur',
                          'Fri',
                          'Sat'
                        ])
                          Center(
                            child: Text(day,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15)),
                          ),
                      ],
                    ),
                    for (var shift in shifts)
                      TableRow(
                        children: [
                          Center(
                              child: Text(shift.officerName,
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 15))),
                          for (int i = 0; i < 7; i++)
                            Center(
                              child: Text(
                                  '${shift.startTime.hour}:${shift.startTime.minute}-${shift.endTime.hour}:${shift.endTime.minute}'), // Display start and end time
                            ),
                        ],
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

  void _showAddScheduleDialog() {
    String userId = '';
    String officerName = '';
    DateTime? startDate;
    DateTime? endDate;
    TimeOfDay? startTime;
    TimeOfDay? endTime;

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          title: Text(
            'Schedule Shift',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black),
          ),
          content: Container(
            width: 700,
            height: 600,
            child: SingleChildScrollView(
              child: ListBody(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          onChanged: (value) => userId = value,
                          decoration: InputDecoration(
                            labelText: 'User ID',
                            labelStyle: TextStyle(color: Colors.black),
                          ),
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      SizedBox(width: 20),
                      Expanded(
                        child: TextFormField(
                          onChanged: (value) => officerName = value,
                          decoration: InputDecoration(
                            labelText: 'Officer Name',
                            labelStyle: TextStyle(color: Colors.black),
                          ),
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  // Added label for the dropdown
                  Text(
                    'Designation/Assigned',
                    style: TextStyle(color: Colors.black),
                  ),
                  DropdownButton<String>(
                    isExpanded: true,
                    value: designation,
                    onChanged: (String? newValue) {
                      setState(() {
                        designation = newValue!;
                      });
                    },
                    items: designations
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child:
                            Text(value, style: TextStyle(color: Colors.black)),
                      );
                    }).toList(),
                    dropdownColor: Colors.white,
                  ),
                  SizedBox(height: 20),
                  // Added label for the DateTime picker
                  Text(
                    'Select Date Start',
                    style: TextStyle(color: Colors.black),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime.now(),
                        lastDate: DateTime(2100),
                      ).then((pickedDate) {
                        if (pickedDate != null) {
                          setState(() {
                            startDate = pickedDate;
                          });
                        }
                      });
                    },
                    child: Text('Pick a Start Date'),
                  ),
                  SizedBox(height: 20),
                  // Added label for the DateTime picker
                  Text(
                    'Select Date End',
                    style: TextStyle(color: Colors.black),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime.now(),
                        lastDate: DateTime(2100),
                      ).then((pickedDate) {
                        if (pickedDate != null) {
                          setState(() {
                            endDate = pickedDate;
                          });
                        }
                      });
                    },
                    child: Text('Pick an End Date'),
                  ),
                  SizedBox(height: 20),
                  // Added label for the Time picker
                  Text(
                    'Time Start',
                    style: TextStyle(color: Colors.black),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      showTimePicker(
                        context: context,
                        initialTime: TimeOfDay.now(),
                      ).then((pickedTime) {
                        if (pickedTime != null) {
                          setState(() {
                            startTime = pickedTime;
                          });
                        }
                      });
                    },
                    child: Text('Pick a Start Time'),
                  ),
                  SizedBox(height: 20),
                  // Added label for the Time picker
                  Text(
                    'Time End',
                    style: TextStyle(color: Colors.black),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      showTimePicker(
                        context: context,
                        initialTime: TimeOfDay.now(),
                      ).then((pickedTime) {
                        if (pickedTime != null) {
                          setState(() {
                            endTime = pickedTime;
                          });
                        }
                      });
                    },
                    child: Text('Pick an End Time'),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          if (userId.isNotEmpty &&
                              officerName.isNotEmpty &&
                              startDate != null &&
                              endDate != null &&
                              startTime != null &&
                              endTime != null) {
                            setState(() {
                              shifts.add(Shift(
                                  userId: userId,
                                  officerName: officerName,
                                  designation: designation ?? '',
                                  startDate: startDate!,
                                  endDate: endDate!,
                                  startTime: startTime!,
                                  endTime: endTime!));
                            });
                            Navigator.of(context).pop();
                          }
                        },
                        child: Text('Save Shift'),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.lightGreen),
                      ),
                      SizedBox(width: 20),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text('Cancel'),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.grey[700]),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _drawerItem(String iconPath, String title, Widget page) {
    return ListTile(
      leading: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Image.asset(iconPath, width: 100, height: 100),
      ),
      title: Text(title, style: TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
      onTap: () {
        Navigator.pop(context);
        Navigator.push(context, MaterialPageRoute(builder: (context) => page));
      },
    );
  }
}
