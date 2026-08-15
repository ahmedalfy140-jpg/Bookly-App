class BookModel {
  final String id;
  final String title;
  final String? author;
  final String? description;
  final String image;
  final double? rating;
  final int? ratingCount;

  BookModel({
    required this.id,
    required this.title,
    this.author,
    this.description,
   required this.image,
    this.rating,
    this.ratingCount,
  });

  factory BookModel.fromJson(json) {
    return BookModel(
      id: json['id'] ?? '',
      title: json['volumeInfo']['title'] ?? 'No Title',
      author: json['volumeInfo']['authors'] != null
          ? json['volumeInfo']['authors'][0]
          : 'Unknown',
      description: json['volumeInfo']['description'] ?? '',
      image: json['volumeInfo']['imageLinks'] != null
          ? json['volumeInfo']['imageLinks']['thumbnail']
          : "",
      rating: json['volumeInfo']['averageRating']?.toDouble(),
      ratingCount: json['volumeInfo']['ratingsCount'],
    );
  }
}