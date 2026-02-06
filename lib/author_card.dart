import 'package:flutter/material.dart';
import 'fooderlich_theme.dart';

class AuthorCard extends StatelessWidget {
  final String authorName;
  final String title;
  final ImageProvider? imageProvider;

  const AuthorCard({
    super.key,
    required this.authorName,
    required this.title,
    this.imageProvider,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              // รูปโปรไฟล์วงกลม
              CircleAvatar(
                radius: 28,
                backgroundImage: imageProvider,
              ),
              const SizedBox(width: 8),
              // ชื่อและสถานะจัดเรียงเป็น Column
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(authorName,
                      style: FooderlichTheme.lightTextTheme.displayMedium),
                  Text(title,
                      style: FooderlichTheme.lightTextTheme.displaySmall),
                ],
              ),
            ],
          ),
          // ปุ่ม IconButton รูปหัวใจ
          IconButton(
            icon: const Icon(Icons.favorite_border),
            iconSize: 30,
            color: Colors.grey,
            onPressed: () {
              const snackBar = SnackBar(content: Text('Favorite Tapped'));
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
          ),
        ],
      ),
    );
  }
}
