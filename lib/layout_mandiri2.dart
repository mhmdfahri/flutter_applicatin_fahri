import 'package:flutter/material.dart';

abstract class ListItem {
  Widget buildItem(BuildContext context);
}

// Heading Item
class HeadingItem implements ListItem {
  final String heading;
  HeadingItem(this.heading);

  @override
  Widget buildItem(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        heading,
        style: Theme.of(context)
            .textTheme
            .titleLarge
            ?.copyWith(color: Colors.blue, fontWeight: FontWeight.bold),
      ),
    );
  }
}

// Message Item
class MessageItem implements ListItem {
  final String sender;
  final String body;
  MessageItem(this.sender, this.body);

  @override
  Widget buildItem(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: ListTile(
        leading: const Icon(Icons.message ),
        title: Text(sender),
        subtitle: Text(body),
      ),
    );
  }
}

// Image Item
class ImageItem implements ListItem {
  final String title;
  final String imageUrl;
  ImageItem(this.title, this.imageUrl);

  @override
  Widget buildItem(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(title,
                style: Theme.of(context).textTheme.titleMedium),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              imageUrl,
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}

class LayoutMandiri2 extends StatelessWidget {
  const LayoutMandiri2({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ListItem> items = List<ListItem>.generate(
      20,
      (i) {
        if (i % 6 == 0) {
          return HeadingItem('Heading $i');
        } else if (i % 6 == 3) {
          return ImageItem(
              'Image item $i', 'https://400/200?random=$i');
        } else {
          return MessageItem('Sender $i', 'Message body $i');
        }
      },
    );

    return Scaffold(
      appBar: AppBar(title: const Text("List dengan Berbagai Item")),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return item.buildItem(context);
        },
      ),
    );
  }
}
