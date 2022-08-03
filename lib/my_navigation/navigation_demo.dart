import 'package:flutter/material.dart';

class Book {
  final int id;
  final String name;
  final String title;
  final String info;

  Book(this.id, this.name, this.title, this.info);
}

final List<Book> books = [
  Book(0, 'Marcel Proust', 'In Search of Lost Time',
      'Swann\'s Way, the first part of A la recherche de temps perdu, Marcel Proust\'s seven-part cycle, was published in 1913. In it, Proust introduces the themes that run through the entire work. The narr...'),
  Book(1, 'James Joyce', 'Ulysses',
      'Ulysses chronicles the passage of Leopold Bloom through Dublin during an ordinary day, June 16, 1904. The title parallels and alludes to Odysseus (Latinised into Ulysses), the hero of Homer\'s Odyss...'),
  Book(2, 'Miguel de Cervantes', 'Don Quixote',
      'Alonso Quixano, a retired country gentleman in his fifties, lives in an unnamed section of La Mancha with his niece and a housekeeper. He has become obsessed with books of chivalry, and believes th...'),
  Book(3, 'Gabriel Garcia Marquez', 'One Hundred Years of Solitude',
      'One of the 20th century\'s enduring works, One Hundred Years of Solitude is a widely beloved and acclaimed novel known throughout the world, and the ultimate achievement in a Nobel Prize–winning car...'),
  Book(4, 'F. Scott Fitzgerald', 'The Great Gatsby',
      'The novel chronicles an era that Fitzgerald himself dubbed the "Jazz Age". Following the shock and chaos of World War I, American society enjoyed unprecedented levels of prosperity during the "roar...'),
  Book(5, 'Herman Melville', 'Moby Dick',
      'First published in 1851, Melville\'s masterpiece is, in Elizabeth Hardwick\'s words, "the greatest novel in American literature." The saga of Captain Ahab and his monomaniacal pursuit of the white wh...')
];

class BookListPage extends StatelessWidget {
  const BookListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Book List Page'),
        centerTitle: true,
        titleTextStyle: const TextStyle(
          fontSize: 28.0,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 12.0),
        child: ListView(
          children: books.map<Widget>((books) {
            return Padding(
              padding: const EdgeInsets.all(12),
              child: Material(
                elevation: 24,
                borderRadius: BorderRadius.circular(16.0),
                color: Colors.blue,
                child: InkWell(
                  radius: 48.0,
                  splashColor: Colors.yellow,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BookDetailPage(books.id)));
                  },
                  child: Container(
                    padding: const EdgeInsets.all(18.0),
                    child: Text(
                      books.name,
                      style: Theme.of(context)
                          .textTheme
                          .headline4
                          ?.copyWith(color: Colors.white),
                    ),
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

class BookDetailPage extends StatelessWidget {
  final int bookId;

  const BookDetailPage(this.bookId, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final book = books[bookId];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Book Detail Page'),
        centerTitle: true,
        titleTextStyle: const TextStyle(
          fontSize: 28.0,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: const EdgeInsets.all(10.0),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16.0),
                  topRight: Radius.circular(16.0),
                ),
                color: Colors.red,
              ),
              child: Text(
                book.title,
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    ?.copyWith(color: Colors.white),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                book.info,
                style: const TextStyle(fontSize: 20.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(const HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Library',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const BookListPage(),
    );
  }
}
