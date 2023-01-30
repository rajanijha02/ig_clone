import 'package:flutter/material.dart';
import 'package:ig_clone/conf.dart';

class StoryItem extends StatelessWidget {
  StoryItem({
    super.key,
    required this.story,
  });
  Story story;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 8,
              vertical: 2,
            ),
            child: Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35),
                border: Border.all(
                  color: Colors.red.withOpacity(0.7),
                  width: 2,
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(35),
                child: Image.asset(
                  story.image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Text(
            story.userName,
          ),
        ],
      ),
    );
  }
}
