import 'package:prantoapp/quiz_level_page.dart';
import 'package:flutter/material.dart';
import 'create_quiz_page.dart';
import 'leaderboard_page.dart';

class QuizPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Quiz',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons
                .emoji_events), // Use Icons.trophy for trophy icon if available
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LeaderboardPage(),
                ),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 16), // Adjust spacing as needed
                Center(
                  child: Text(
                    'Test your Flutter knowledge!',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
                SizedBox(height: 32),
                QuizModeButton(
                  title: 'Timed Quiz',
                  description: 'Complete the quiz within a time limit.',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => QuizLevelPage(mode: 'Timed'),
                      ),
                    );
                  },
                ),
                QuizModeButton(
                  title: 'Practice Mode',
                  description: 'Practice without a time limit.',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => QuizLevelPage(mode: 'Practice'),
                      ),
                    );
                  },
                ),
                QuizModeButton(
                  title: 'Add new questions',
                  description: 'Create and share your own quizzes.',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CreateQuizPage(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class QuizModeButton extends StatelessWidget {
  final String title;
  final String description;
  final VoidCallback onPressed;

  QuizModeButton(
      {required this.title,
      required this.description,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        contentPadding: EdgeInsets.all(16),
        title: Text(
          title,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(description),
        trailing: Icon(Icons.arrow_forward),
        onTap: onPressed,
      ),
    );
  }
}
