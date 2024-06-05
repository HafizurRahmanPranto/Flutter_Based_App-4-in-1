import 'package:prantoapp/quiz_detail_page.dart';
import 'package:flutter/material.dart';

class QuizLevelPage extends StatelessWidget {
  final String mode;

  QuizLevelPage({required this.mode});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$mode Quiz Levels'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(1.0),
        child: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, index) {
            return QuizLevelCard(level: index + 1, mode: mode);
          },
        ),
      ),
    );
  }
}

class QuizLevelCard extends StatelessWidget {
  final int level;
  final String mode;

  QuizLevelCard({required this.level, required this.mode});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        contentPadding: EdgeInsets.all(16),
        leading: CircleAvatar(
          child: Text('L$level'),
        ),
        title: Text(
          'Level $level',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
            'These questions will get difficult when u go to the next level & the number of questions will incrase'),
        trailing: Icon(Icons.arrow_forward),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => QuizDetailPage(level: level, mode: mode),
            ),
          );
        },
      ),
    );
  }
}
