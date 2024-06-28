class news_model {
  String title;
  String image;
  String des;
  int likes;
  int comments;
  bool isLiked;
  bool isSaved;
  news_model(
      {required this.title, required this.image, required this.des, required this.likes, required this.comments,required this.isLiked, required this.isSaved});
}