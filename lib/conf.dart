class AppConfig {
  static String searchIcon = "assets/logo/search.png";
  static String homeIcon = "assets/logo/home.png";
  static String messageLogo = "assets/logo/chats.png";
  static String post = "assets/logo/add.png";
  static String comments = "assets/logo/comments.png";
  static String heart = "assets/logo/heart.png";
  static String saved = "assets/logo/saved.png";
  static String title = 'Instagram';
  static String logo = "assets/logo/insta_logo.png";
  static List<Story> storyImage = [
    Story(
      image: "assets/profile.jpg",
      userName: "Your Story",
      own: true,
    ),
    Story(
      image: "assets/story/profile2.jpg",
      userName: "gaurav_02",
      own: false,
    ),
    Story(
      image: "assets/story/profile3.jpg",
      userName: "samridhi_02",
      own: false,
    ),
    Story(
      image: "assets/story/profile4.jpg",
      userName: "satyam52",
      own: false,
    ),
    Story(
      image: "assets/story/profile5.jpg",
      userName: "__frenzycoder",
      own: false,
    ),
  ];
  static List<Post> posts = [
    Post(
        postImage: "assets/profile.jpg",
        image: "assets/profile.jpg",
        username: "rajanijha02",
        likes: "231",
        comments: "37",
        profileImage: "assets/profile.jpg"),
    Post(
        postImage: "assets/p2.jpg",
        image: "assets/story/profile3.jpg",
        username: "rajanijha02",
        likes: "543",
        comments: "59",
        profileImage: "assets/profile.jpg"),
    Post(
      postImage: "assets/p3.jpg",
      image: "assets/story/profile4.jpg",
      username: "krpankaj",
      likes: "123",
      comments: "12",
      profileImage: "assets/profile.jpg",
    ),
  ];
}

class Story {
  String image;
  String userName;
  bool own;

  Story({
    required this.image,
    required this.userName,
    required this.own,
  });
}

class Post {
  String image;
  String username;
  String postImage;
  String likes;
  String comments;
  String profileImage;

  Post({
    required this.postImage,
    required this.image,
    required this.username,
    required this.likes,
    required this.comments,
    required this.profileImage,
  });
}
