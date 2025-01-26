
import 'package:flutter/material.dart';
import 'package:sticky_headers/sticky_headers.dart';

import '../../theme/styles.dart';
import '../../widgets/navbar_widget.dart';
import '../nav_pages/home/home_page.dart';

class MainLandingPage extends StatefulWidget {
  const MainLandingPage({super.key});

  @override
  State<MainLandingPage> createState() => _MainLandingPageState();
}

class _MainLandingPageState extends State<MainLandingPage> {

  int _currentSelectedNavIndex = 0;

  ScrollController? _scrollController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: linkedInLightGreyBackgroundF3F2EE,
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            StickyHeader(
              controller: _scrollController,
              header: NavBarWidget(onNavbarItemClickListener: (index) {
                setState(() {
                  _currentSelectedNavIndex = index;
                });
              }),
              content: _switchPagesAccordingToNavbarIndex(_currentSelectedNavIndex),
            ),
          ],
        ),
      ),
    );
  }

  _switchPagesAccordingToNavbarIndex(int index) {
    switch (index) {
      case 0:
        {
          return const HomePage();
        }
      case 1:
        {
          return const Center(
            child: Text("My Network"),
          );
        }
      case 2:
        {
          return const Center(
            child: Text("Jobs"),
          );
        }
      case 3:
        {
          return const Center(
            child: Text("Messaging"),
          );
        }
      case 4:
        {
          return const Center(
            child: Text("Notifications"),
          );
        }
    }
  }
}
