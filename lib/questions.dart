final List<Map<String, Object>> level1Questions = [
  {
    'question': 'What widget is used for layouts in Flutter?',
    'answers': [
      {'text': 'Container', 'score': 0},
      {'text': 'Column', 'score': 1},
      {'text': 'Text', 'score': 0},
      {'text': 'Icon', 'score': 0},
    ],
    'explanation': 'The Column widget is used for vertical layouts in Flutter.',
  },
  {
    'question':
        'Which widget allows you to listen to user gestures in Flutter?',
    'answers': [
      {'text': 'GestureDetector', 'score': 1},
      {'text': 'Listener', 'score': 0},
      {'text': 'Pointer', 'score': 0},
      {'text': 'TapListener', 'score': 0},
    ],
    'explanation':
        'The GestureDetector widget allows you to listen to and respond to user gestures in Flutter.',
  },
  {
    'question': 'How do you define a stateful widget in Flutter?',
    'answers': [
      {'text': 'By extending the StatefulWidget class', 'score': 1},
      {'text': 'By extending the StatelessWidget class', 'score': 0},
      {'text': 'By using the setState method', 'score': 0},
      {'text': 'By using the State class directly', 'score': 0},
    ],
    'explanation':
        'You define a stateful widget in Flutter by extending the StatefulWidget class and creating a corresponding State class.',
  },
];
final List<Map<String, Object>> level2Questions = [
  {
    'question':
        'What is the purpose of the pubspec.yaml file in a Flutter project?',
    'answers': [
      {'text': 'To define the layout of the app', 'score': 0},
      {'text': 'To manage dependencies and assets', 'score': 1},
      {'text': 'To handle state management', 'score': 0},
      {'text': 'To store database information', 'score': 0},
    ],
    'explanation':
        'The pubspec.yaml file is used to manage dependencies, assets, and other settings for a Flutter project.',
  },
  {
    'question':
        'Which widget is commonly used to create an app bar in Flutter?',
    'answers': [
      {'text': 'AppBar', 'score': 1},
      {'text': 'ToolBar', 'score': 0},
      {'text': 'NavBar', 'score': 0},
      {'text': 'ActionBar', 'score': 0},
    ],
    'explanation':
        'The AppBar widget is commonly used to create an app bar in Flutter.',
  },
  {
    'question': 'How do you add padding around a widget in Flutter?',
    'answers': [
      {'text': 'Using the Padding widget', 'score': 1},
      {'text': 'Using the Margin widget', 'score': 0},
      {'text': 'Using the Container widget', 'score': 0},
      {'text': 'Using the Spacer widget', 'score': 0},
    ],
    'explanation':
        'You can add padding around a widget in Flutter using the Padding widget.',
  },
  {
    'question':
        'Which of the following is NOT a lifecycle method of a StatefulWidget?',
    'answers': [
      {'text': 'initState', 'score': 0},
      {'text': 'dispose', 'score': 0},
      {'text': 'build', 'score': 0},
      {'text': 'render', 'score': 1},
    ],
    'explanation':
        'The render method is not a lifecycle method of a StatefulWidget. The initState, dispose, and build methods are.',
  },
  {
    'question': 'Which widget in Flutter is used to display a list of items?',
    'answers': [
      {'text': 'GridView', 'score': 0},
      {'text': 'Column', 'score': 0},
      {'text': 'ListView', 'score': 1},
      {'text': 'SingleChildScrollView', 'score': 0},
    ],
    'explanation':
        'The ListView widget is used to display a list of items in Flutter.',
  },
];

final List<Map<String, Object>> level3Questions = [
  {
    'question': 'What function is used to start a Flutter app?',
    'answers': [
      {'text': 'startApp', 'score': 0},
      {'text': 'runApp', 'score': 1},
      {'text': 'initializeApp', 'score': 0},
      {'text': 'launchApp', 'score': 0},
    ],
    'explanation':
        'The runApp function is used to start a Flutter app by inflating the given widget and attaching it to the screen.',
  },
  {
    'question': 'How do you create an infinite scrollable list in Flutter?',
    'answers': [
      {'text': 'Using ListView.builder', 'score': 1},
      {'text': 'Using ListView', 'score': 0},
      {'text': 'Using Column with ScrollView', 'score': 0},
      {'text': 'Using GridView', 'score': 0},
    ],
    'explanation':
        'The ListView.builder constructor creates a scrollable, lazily loaded list in Flutter.',
  },
  {
    'question':
        'Which of the following widgets is used to create a button with an icon and a label?',
    'answers': [
      {'text': 'FlatButton', 'score': 0},
      {'text': 'RaisedButton', 'score': 0},
      {'text': 'IconButton', 'score': 0},
      {'text': 'ElevatedButton.icon', 'score': 1},
    ],
    'explanation':
        'The ElevatedButton.icon widget is used to create a button with both an icon and a label.',
  },
  {
    'question': 'How do you navigate between screens in Flutter?',
    'answers': [
      {'text': 'Using the Navigator widget', 'score': 1},
      {'text': 'Using the Route widget', 'score': 0},
      {'text': 'Using the Screen widget', 'score': 0},
      {'text': 'Using the Stack widget', 'score': 0},
    ],
    'explanation':
        'The Navigator widget is used to manage a stack of route objects and navigate between screens in Flutter.',
  },
  {
    'question': 'Which widget is used to create a grid of items in Flutter?',
    'answers': [
      {'text': 'ListView', 'score': 0},
      {'text': 'Column', 'score': 0},
      {'text': 'GridView', 'score': 1},
      {'text': 'Table', 'score': 0},
    ],
    'explanation':
        'The GridView widget is used to create a grid of items in Flutter.',
  },
  {
    'question':
        'Which widget is used to create a scrollable single child in Flutter?',
    'answers': [
      {'text': 'SingleChildScrollView', 'score': 1},
      {'text': 'ListView', 'score': 0},
      {'text': 'Column', 'score': 0},
      {'text': 'ScrollView', 'score': 0},
    ],
    'explanation':
        'The SingleChildScrollView widget is used to create a scrollable single child in Flutter.',
  },
  {
    'question': 'What is the purpose of the SizedBox widget in Flutter?',
    'answers': [
      {'text': 'To add space between widgets', 'score': 1},
      {'text': 'To create a button', 'score': 0},
      {'text': 'To manage state', 'score': 0},
      {'text': 'To handle gestures', 'score': 0},
    ],
    'explanation':
        'The SizedBox widget is used to add space between widgets or to create an empty box with a specific size.',
  },
  {
    'question':
        'How do you apply a gradient background to a container in Flutter?',
    'answers': [
      {'text': 'Using the Gradient widget', 'score': 0},
      {'text': 'Using the BoxDecoration widget', 'score': 1},
      {'text': 'Using the Background widget', 'score': 0},
      {'text': 'Using the Decoration widget', 'score': 0},
    ],
    'explanation':
        'You apply a gradient background to a container in Flutter using the BoxDecoration widget.',
  },
  {
    'question':
        'Which of the following widgets is used to create a tappable area in Flutter?',
    'answers': [
      {'text': 'GestureDetector', 'score': 1},
      {'text': 'TapListener', 'score': 0},
      {'text': 'Touchable', 'score': 0},
      {'text': 'Clickable', 'score': 0},
    ],
    'explanation':
        'The GestureDetector widget is used to create a tappable area in Flutter and handle various gestures.',
  },
  {
    'question': 'What is the primary language used for Flutter development?',
    'answers': [
      {'text': 'JavaScript', 'score': 0},
      {'text': 'Kotlin', 'score': 0},
      {'text': 'Swift', 'score': 0},
      {'text': 'Dart', 'score': 1},
    ],
    'explanation': 'The primary language used for Flutter development is Dart.',
  },
];
