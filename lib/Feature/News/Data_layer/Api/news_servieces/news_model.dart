class news_model {
  String title;
  String? image;
  String content;
  int? likes = 0;
  int? comments = 0;
  bool? isLiked = false;
  bool? isSaved = false;
  news_model(
      {required this.title, required this.image, required this.content,  this.likes, this.comments, this.isLiked,  this.isSaved});

}