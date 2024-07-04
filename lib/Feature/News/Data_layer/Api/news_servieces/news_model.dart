class news_model {
  String? title;
  String? image;
  String? content;
  String? author;
  String? date;
  int likes = 0;
  int comments = 0;
  bool isLiked = false;
  bool isSaved = false;
  news_model(
      { this.title,  this.image,  this.content, required this.likes, required this.comments, required this.isLiked, required this.isSaved, this.author, this.date});

}