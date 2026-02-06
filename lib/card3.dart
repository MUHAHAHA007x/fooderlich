import 'package:flutter/material.dart';
import 'fooderlich_theme.dart';

class Card3 extends StatelessWidget {
  const Card3({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints.expand(width: 550, height: 550),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/veget.jpg'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        child: Stack(
          children: [
            // ส่วนที่ทำให้พื้นหลังดูจางลง (Overlay)
            Container(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.6),
                borderRadius: const BorderRadius.all(Radius.circular(10.0)),
              ),
            ),
            // เนื้อหาภายใน Card
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(Icons.book, color: Colors.white, size: 40),
                  const SizedBox(height: 8),
                  Text('Recipe Trends',
                      style: FooderlichTheme.darkTextTheme.displayMedium),
                  const SizedBox(height: 16),
                  // จุดสำคัญ: Wrap Widget
                  Wrap(
                    alignment: WrapAlignment.start,
                    spacing: 12, // ระยะห่างแนวนอน
                    runSpacing: 12, // ระยะห่างระหว่างบรรทัด
                    children: [
                      Chip(label: const Text('Healthy'), onDeleted: () {}),
                      Chip(label: const Text('Vegan'), onDeleted: () {}),
                      Chip(label: const Text('Carrots'), onDeleted: () {}),
                      Chip(label: const Text('Greens'), onDeleted: () {}),
                      Chip(label: const Text('Wheat'), onDeleted: () {}),
                      Chip(label: const Text('Pescetarian'), onDeleted: () {}),
                      Chip(label: const Text('Mint'), onDeleted: () {}),
                      Chip(label: const Text('Lemongrass'), onDeleted: () {}),
                    ],
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
