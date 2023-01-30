import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:ig_clone/conf.dart';
import 'package:ig_clone/widgets/post_item.dart';
import 'package:ig_clone/widgets/story_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int cureentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Image.asset(
          AppConfig.logo,
          width: 150,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: InkWell(
              onTap: () {},
              child: Image.asset(
                AppConfig.post,
                height: 30,
                width: 30,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: InkWell(
              onTap: () {},
              child: Image.asset(
                AppConfig.messageLogo,
                height: 30,
                width: 30,
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 120,
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: const ScrollPhysics(parent: BouncingScrollPhysics()),
                itemBuilder: (context, index) {
                  return StoryItem(story: AppConfig.storyImage[index]);
                },
                itemCount: AppConfig.storyImage.length,
              ),
            ),
            ...AppConfig.posts.map((e) => PostItem(post: e)).toList()
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        fixedColor: Colors.white,
        elevation: 3,
        currentIndex: cureentIndex,
        onTap: (value) {
          setState(() {
            cureentIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              AppConfig.homeIcon,
              height: 30,
              width: 30,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              AppConfig.searchIcon,
              height: 30,
              width: 30,
            ),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              AppConfig.post,
              height: 30,
              width: 30,
            ),
            label: "Post",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              AppConfig.heart,
              height: 30,
              width: 30,
            ),
            label: "Post",
          ),
          BottomNavigationBarItem(
            icon: Container(
              height: 40,
              width: 40,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  AppConfig.storyImage[0].image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            label: "Profile",
          )
        ],
      ),
    );
  }
}
