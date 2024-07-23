import 'package:fire_crud/fire_crud.dart';
import 'package:fire_crud_flutter/fire_crud_flutter.dart';
import 'package:flutter/material.dart';
import 'package:noteapp/model/note_add_button.dart';
import 'package:noteapp/model/user.dart';
import 'package:noteapp/util/context.dart';
import 'package:noteapp/widget/note_list.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomePageState();
}

class _HomePageState extends State<Home> {
  var _currentIndex = 0;
  @override
  Widget build(BuildContext context) => $crud.pylonStream<User>(
      context,
      userId,
      (context) => Scaffold(
            bottomNavigationBar: SalomonBottomBar(
              currentIndex: _currentIndex,
              onTap: (i) => setState(() => _currentIndex = i),
              items: [
                /// Home
                SalomonBottomBarItem(
                  icon: const Icon(Icons.home_sharp),
                  title: const Text("Home"),
                  selectedColor: Colors.purple,
                ),

                /// Likes
                SalomonBottomBarItem(
                  icon: const Icon(Icons.sticky_note_2_sharp),
                  title: const Text("Notes"),
                  selectedColor: Colors.pink,
                ),

                /// Search
                SalomonBottomBarItem(
                  icon: const Icon(Icons.search_sharp),
                  title: const Text("Search"),
                  selectedColor: Colors.orange,
                ),

                /// Profile
                SalomonBottomBarItem(
                  icon: const Icon(Icons.settings_sharp),
                  title: const Text("Settings"),
                  selectedColor: Colors.teal,
                ),
              ],
            ),
            floatingActionButton: const NoteAddButton(),
            //make it switch between Center(child: Text('screenName')) and NoteList(), for each of the screens
            body: _currentIndex == 0
                ? const Center(child: Text('Home'))
                : _currentIndex == 1
                    ? const NoteList()
                    : _currentIndex == 2
                        ? const Center(child: Text('Search'))
                        : const Center(child: Text('Settings')),
          ),
      loading: const Scaffold(
          body: Center(
        child: CircularProgressIndicator(),
      )));
}
