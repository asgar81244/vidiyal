import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'footer.dart';
import 'home.dart';
import 'aboutus.dart';
import 'ourwork.dart';
import 'events.dart';
import 'gallery.dart';
import 'contact.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Web',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        popupMenuTheme: PopupMenuThemeData(
          color: Colors.white, // Background color of the popup menu
          textStyle: TextStyle(color: Colors.black), // Text color
        ),
      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  final List<Widget> _pages = [
    HomePageContent(),
    AboutUsPage(),
    OurWorkPage(),
    EventsPage(),
    GalleryPage(),
    ContactPage(),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _pages.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  void _onMenuItemSelected(String menu, String value) {
    print('$menu - $value selected');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: SingleChildScrollView(
          scrollDirection: Axis.horizontal, // Makes the text scroll horizontally
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'VIDIYAL MEDICAL MISSION',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
              SizedBox(width: 20), // Optional: adds some spacing between the two texts
              Row(
                children: [
                  FaIcon(
                    FontAwesomeIcons.phoneAlt,  // Use the phone icon for contact
                    color: Colors.black,
                    size: 12,
                  ),
                  SizedBox(width: 6),
                  Text(
                    '+91 76278672 ',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                    ),
                  ),

                ],
              ),
            ],
          ),
        ),
        actions: [
          IconButton(
            icon: FaIcon(FontAwesomeIcons.facebook, color: Colors.blue),
            onPressed: () {
              // Add Facebook action
            },
          ),
          IconButton(
            icon: FaIcon(FontAwesomeIcons.twitter, color: Colors.black),
            onPressed: () {
              // Add Twitter action
            },
          ),
          IconButton(
            icon: FaIcon(FontAwesomeIcons.instagram, color: Colors.pink),
            onPressed: () {
              // Add Instagram action
            },
          ),
          IconButton(
            icon: FaIcon(FontAwesomeIcons.youtube, color: Colors.red),
            onPressed: () {
              // Add YouTube action
            },
          ),
        ],
      ),


      body: Column(
        children: [
          Container(
            color: Colors.black,
            child: Row(
              children: [
                // Using Wrap to add tabs and popup menus
                Expanded(
                  child: TabBar(
                    controller: _tabController,
                    indicator: BoxDecoration(),
                    tabs: [
                      _tabWithMenu('Home'),
                      _tabWithMenu('About Us', ['Mission & Vision', 'Our Team', 'Our History']),
                      _tabWithMenu('Our Work', ['Projects', 'Collaborations']),
                      _tabWithMenu('Events', ['Upcoming', 'Past']),
                      _tabWithMenu('Gallery',['photo1', 'photo2']),
                      _tabWithMenu('Contact'),
                    ],
                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.grey,
                    isScrollable: true,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: _pages,
            ),
          ),
        ],
      ),
    );
  }

  Widget _tabWithMenu(String tabName, [List<String>? menuItems]) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Tab(text: tabName),
        if (menuItems != null)
          PopupMenuButton<String>(
            onSelected: (value) => _onMenuItemSelected(tabName, value),
            itemBuilder: (context) {
              return menuItems.map((item) {
                return PopupMenuItem<String>(
                  value: item,
                  child: Text(item, style: TextStyle(color: Colors.black)),
                );
              }).toList();
            },
            icon: Icon(Icons.arrow_drop_down, color: Colors.white),
          ),
      ],
    );
  }
}
