import 'package:flutter/material.dart';
import 'fooderlich_theme.dart';
import 'author_card.dart'; // อย่าลืมสร้างไฟล์นี้แยกตามสไลด์นะคะ

class Card2 extends StatelessWidget {
  const Card2({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints.expand(width: 550, height: 550),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'assets/images/pink-smoothie-square.jpg'), // เปลี่ยนเป็น path รูปที่พี่มี
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        child: Column(
          children: [
            // 1. ส่วนหัวที่มีรูป Mike Katz
            const AuthorCard(
              authorName: 'Mike Katz',
              title: 'Smoothie Connoisseur',
              imageProvider:
                  AssetImage('assets/images/person-circle-outline.jpg'),
            ),
            // 2. ส่วนข้อความที่จัดวางด้วย Expanded และ Stack
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                    bottom: 16,
                    right: 16,
                    child: Text(
                      'Recipe',
                      style: FooderlichTheme.lightTextTheme.displayLarge,
                    ),
                  ),
                  Positioned(
                    bottom: 70,
                    left: 16,
                    child: RotatedBox(
                      quarterTurns: 3,
                      child: Text(
                        'Smoothies',
                        style: FooderlichTheme.lightTextTheme.displayLarge,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
