import 'package:banao/const/custom_color.dart';
import 'package:banao/const/custom_text.dart';
import 'package:banao/screens/list_builder.dart';
import 'package:banao/widgets/appbar.dart';
import 'package:banao/widgets/list_view1.dart';
import 'package:banao/widgets/navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            CustomAppbar(),
            Expanded(
                child: SingleChildScrollView(
                    child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [ListBuilder()],
              ),
            )))
          ],
        ),
      ),
      bottomNavigationBar: MyBottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    ));
  }
}
