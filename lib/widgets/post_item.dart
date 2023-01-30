import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ig_clone/conf.dart';

class PostItem extends StatelessWidget {
  PostItem({
    super.key,
    required this.post,
  });

  Post post;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(
                          color: Colors.red.withOpacity(0.7), width: 2),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: Image.asset(
                        post.image,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      post.username,
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  )
                ],
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.more_vert,
                ),
              )
            ],
          ),
        ),
        Image.asset(
          post.postImage,
          fit: BoxFit.cover,
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    AppConfig.heart,
                    height: 35,
                    width: 35,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Image.asset(
                    AppConfig.comments,
                    height: 35,
                    width: 35,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(Icons.share)
                ],
              ),
              Image.asset(
                AppConfig.saved,
                height: 35,
                width: 35,
              )
            ],
          ),
        ),
        Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            '${post.likes} likes',
            style: const TextStyle(
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            '${post.username} some caption',
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            'View all 58 comments',
            style: TextStyle(
              color: Colors.grey.withOpacity(0.6),
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    AppConfig.storyImage[0].image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                'Add a comment...',
                style: TextStyle(
                  color: Colors.grey.withOpacity(0.6),
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
