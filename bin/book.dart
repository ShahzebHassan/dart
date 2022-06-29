// ignore_for_file: unnecessary_brace_in_string_interps

class Book {
  Book({
    required this.id, //this:implicit object pointing to the current class object./to remove ambiguity
    required this.title,
    required this.author,
    required this.price,
  });
  final String id; //final: value can be assigned at runtime instead CT
  final String title;
  final String author;
  double price;
  String getDetails() => '(${id}) ${title} (${author}) - (Rs.${price})';
}
