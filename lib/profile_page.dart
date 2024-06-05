import 'package:flutter/material.dart';
import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfilePage extends StatefulWidget {
  final ValueChanged<bool> onThemeChanged;
  final bool isDarkMode;

  ProfilePage({required this.onThemeChanged, required this.isDarkMode});

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  File? _resumeFile;

  Future<void> _pickResume() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf', 'doc'],
    );
    if (result != null) {
      setState(() {
        _resumeFile = File(result.files.single.path!);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          widget.isDarkMode ? Colors.black : Color.fromARGB(255, 255, 255, 255),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Md. Hafizur Rahman Pranto',
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color:
                                widget.isDarkMode ? Colors.white : Colors.black,
                          ),
                        ),
                        Text(
                          'Undergraduate Student at\nDaffodil International University',
                          style: TextStyle(
                            fontSize: 18,
                            color: widget.isDarkMode
                                ? const Color.fromARGB(255, 255, 255, 255)
                                : const Color.fromARGB(255, 0, 0, 0),
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Center(
                      child: Container(
                        width: 200,
                        height: 200,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/profile.png'),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 24),
              _buildSectionTitle('Bio', Icons.person),
              Text(
                'Welcome to my portfolio. Im a university student & a so called graphics designer & a web developer who loves to edit & code. I like to teach, want to become a mentor someday. Health Conscious. I am super attached to music, loves to sing & play musical- instruments. Always want to explore new things.',
                style: TextStyle(
                  fontSize: 16,
                  color: widget.isDarkMode
                      ? const Color.fromARGB(255, 255, 255, 255)
                      : Colors.black,
                ),
                textAlign: TextAlign.justify,
              ),
              Divider(
                  color: widget.isDarkMode
                      ? Colors.white
                      : Color.fromARGB(255, 0, 0, 0)),
              SizedBox(height: 24),
              _buildSectionTitle('Skills', Icons.build),
              Wrap(
                spacing: 8,
                runSpacing: 4,
                children: <Widget>[
                  _buildSkillChip('Machine Learning', 'assets/ml.png'),
                  _buildSkillChip('Internet of Things', 'assets/iot.png'),
                  _buildSkillChip('Artificial intelligence', 'assets/ai.png'),
                  _buildSkillChip('Python', 'assets/python.png'),
                  _buildSkillChip('Flutter', 'assets/flutter.png'),
                  _buildSkillChip('HTML', 'assets/html.png'),
                  _buildSkillChip('CSS', 'assets/css.png'),
                  _buildSkillChip('JAVA', 'assets/java.png'),
                  _buildSkillChip('MS Word', 'assets/msword.png'),
                  _buildSkillChip('MS Powerpoint', 'assets/mspower.png'),
                  _buildSkillChip('MS Excel', 'assets/msexcel.png'),
                  _buildSkillChip('Adobe Photoshop', 'assets/ps.png'),
                  _buildSkillChip('Adobe illustrator', 'assets/il.png'),
                  _buildSkillChip('Adobe Experience Design', 'assets/xd.png'),
                  _buildSkillChip('C', 'assets/c.png'),
                  _buildSkillChip('C++', 'assets/c++.png'),
                ],
              ),
              Divider(
                  color: widget.isDarkMode
                      ? Colors.white
                      : Color.fromARGB(255, 0, 0, 0)),
              SizedBox(height: 32),
              _buildSectionTitle('Education', Icons.school),
              _buildEducationItem(
                'B.Sc. in Computer Science and Engineering',
                'Daffodil International University',
                'Current CGPA: 3.70 out of 4.00\nGraduation Year: 2021 - 2025',
              ),
              _buildEducationItem(
                'H.S.C. in Science',
                'Noubahini College, Dhaka',
                'Result: 5.00 out of 5.00\nYear: 2016 - 2018',
              ),
              _buildEducationItem(
                'S.S.C in Science',
                'Siraj Mia Memorial Model School',
                'Result: 5.00 out of 5.00\nYear: 2014 - 2016',
              ),
              Divider(
                  color: widget.isDarkMode
                      ? Colors.white
                      : Color.fromARGB(255, 0, 0, 0)),
              SizedBox(height: 24),
              _buildSectionTitle('Hobbies', Icons.local_activity_rounded),
              ProjectCard(
                title: 'Sports',
                description:
                    '''Love to watch football match. My Favorite team is Real Madrid the club palys in spain''',
              ),
              ProjectCard(
                title: 'Music',
                description:
                    '''Love to sing all sorts of songs and know how to play guitar with it''',
              ),
              ProjectCard(
                title: 'Pc Enthusiast',
                description:
                    '''I am always curious about pc parts that's why love to build the personally ''',
              ),
              Divider(
                  color: widget.isDarkMode
                      ? Colors.white
                      : Color.fromARGB(255, 0, 0, 0)),
              SizedBox(height: 24),
              _buildSectionTitle('Experience', Icons.work_rounded),
              ProjectCard(
                title: 'Customer sales executive',
                description: ''' Facebook Page: Trendy Splash

Worked as a sales executive in a online facebook page.
2020''',
              ),
              ProjectCard(
                title: 'Private Tutor',
                description:
                    '''I have been teaching for a long time. It helps me to increase my presentation skill & also my language skill.

2019 - Present''',
              ),
              Divider(
                  color: widget.isDarkMode
                      ? Colors.white
                      : Color.fromARGB(255, 0, 0, 0)),
              SizedBox(height: 24),
              _buildSectionTitle('Resume/CV', Icons.insert_drive_file),
              Center(
                child: ElevatedButton(
                  onPressed: _pickResume,
                  child: Text('Upload'),
                ),
              ),
              if (_resumeFile != null)
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(
                    'Uploaded: ${_resumeFile!.path.split('/').last}',
                    style: TextStyle(fontSize: 16, color: Colors.green),
                  ),
                ),
              Divider(
                  color: widget.isDarkMode
                      ? Colors.white
                      : Color.fromARGB(255, 0, 0, 0)),
              SizedBox(height: 24),
              _buildSectionTitle('Blog', Icons.book),
              Center(
                child: BlogSection(),
              ),
              Divider(
                  color: widget.isDarkMode
                      ? Colors.white
                      : Color.fromARGB(255, 0, 0, 0)),
              SizedBox(height: 24),
              _buildSectionTitle('Social Media', Icons.share),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    icon: FaIcon(FontAwesomeIcons.facebook),
                    color: widget.isDarkMode
                        ? Colors.white
                        : Color.fromARGB(255, 0, 0, 0),
                    iconSize: 40,
                    onPressed: facebook_url,
                  ),
                  IconButton(
                    icon: FaIcon(FontAwesomeIcons.github),
                    color: widget.isDarkMode
                        ? Colors.white
                        : Color.fromARGB(255, 0, 0, 0),
                    iconSize: 40,
                    onPressed: github_url,
                  ),
                  IconButton(
                      icon: FaIcon(FontAwesomeIcons.linkedin),
                      color: widget.isDarkMode
                          ? Colors.white
                          : Color.fromARGB(255, 0, 0, 0),
                      iconSize: 43,
                      onPressed: linked_in_url),
                  IconButton(
                      icon: FaIcon(FontAwesomeIcons.instagram),
                      color: widget.isDarkMode
                          ? Colors.white
                          : Color.fromARGB(255, 0, 0, 0),
                      iconSize: 43,
                      onPressed: instagram_url),
                ],
              ),
              Divider(
                  color: widget.isDarkMode
                      ? Colors.white
                      : Color.fromARGB(255, 0, 0, 0)),
              _buildSectionTitle('Contact Information', Icons.contact_mail),
              ListTile(
                leading: Icon(Icons.email),
                title: Row(
                  children: [
                    TextButton(
                      onPressed: () =>
                          launch('mailto:hafizur15-4209@diu.edu.bd'),
                      child: Text('hafizur15-4209@diu.edu.bd'),
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: Icon(Icons.phone),
                title: Row(
                  children: [
                    TextButton(
                      onPressed: () => launch('tel:+8801623927766'),
                      child: Text('+8801623927766'),
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: Icon(Icons.web),
                title: Row(
                  children: [
                    TextButton(
                      onPressed: () => launch(
                          'https://sites.google.com/diu.edu.bd/hafizur-rahman-pranto/home?authuser=0'),
                      child: Text('Google site'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title, IconData icon) {
    return Row(
      children: [
        Icon(icon,
            color: widget.isDarkMode
                ? Colors.white
                : Color.fromARGB(255, 0, 0, 0)),
        SizedBox(width: 8),
        Text(
          title,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color:
                widget.isDarkMode ? Colors.white : Color.fromARGB(255, 0, 0, 0),
          ),
        ),
      ],
    );
  }

  Widget _buildSkillChip(String skillName, String assetPath) {
    return Chip(
      avatar: Image.asset(assetPath, width: 30, height: 30),
      label: Text(skillName),
    );
  }

  Widget _buildEducationItem(
      String degree, String institution, String details) {
    return ListTile(
      title: Text(
        degree,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color:
              widget.isDarkMode ? Colors.white : Color.fromARGB(255, 0, 0, 0),
        ),
      ),
      subtitle: Text(
        '$institution\n$details',
        style: TextStyle(
          color: widget.isDarkMode ? Colors.grey[400] : Colors.black,
        ),
      ),
    );
  }

  Widget _buildExperienceItem(
      String title, String company, String period, String description) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.work,
              color: widget.isDarkMode ? Colors.white : Colors.blueAccent),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: widget.isDarkMode
                        ? const Color.fromARGB(255, 255, 255, 255)
                        : Colors.black,
                  ),
                ),
                Text(
                  company,
                  style: TextStyle(
                    fontSize: 16,
                    color: widget.isDarkMode
                        ? Color.fromARGB(255, 255, 255, 255)
                        : Colors.black,
                  ),
                ),
                Text(
                  period,
                  style: TextStyle(
                    fontSize: 14,
                    color: widget.isDarkMode
                        ? Color.fromARGB(255, 255, 255, 255)
                        : const Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  description,
                  style: TextStyle(
                    fontSize: 14,
                    color: widget.isDarkMode
                        ? Color.fromARGB(255, 255, 255, 255)
                        : Colors.black,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

linked_in_url() async {
  const url = 'https://www.linkedin.com/in/hr-pranto-0aa638219/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

facebook_url() async {
  const url = 'https://www.facebook.com/hafizurrahman.pranto/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

github_url() async {
  const url = 'https://github.com/HafizurRahmanPranto';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

instagram_url() async {
  const url = 'https://www.instagram.com/hafizur_rahman.pranto/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

class ProjectCard extends StatelessWidget {
  final String title;
  final String description;

  ProjectCard({required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                //color: widget.isDarkMode ? Colors.black : Colors.white,
              ),
            ),
            SizedBox(height: 8),
            Text(
              description,
              style: TextStyle(
                  //color: widget.isDarkMode ? Colors.black : Colors.white,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}

class BlogSection extends StatefulWidget {
  @override
  _BlogSectionState createState() => _BlogSectionState();
}

class _BlogSectionState extends State<BlogSection> {
  final List<Map<String, String>> _blogPosts = [];

  void _addBlogPost() {
    showDialog(
      context: context,
      builder: (context) {
        final titleController = TextEditingController();
        final contentController = TextEditingController();
        return AlertDialog(
          title: Text('New Blog Post'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: titleController,
                decoration: InputDecoration(labelText: 'Title'),
              ),
              TextField(
                controller: contentController,
                decoration: InputDecoration(labelText: 'Content'),
                maxLines: 4,
              ),
            ],
          ),
          actions: [
            Center(
              child: ButtonBar(
                alignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      setState(() {
                        _blogPosts.add({
                          'title': titleController.text,
                          'content': contentController.text,
                        });
                      });
                      Navigator.of(context).pop();
                    },
                    child: Text('Add'),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ElevatedButton(
          onPressed: _addBlogPost,
          child: Text('Add Blog Post'),
        ),
        ..._blogPosts.map((post) {
          return Card(
            margin: EdgeInsets.symmetric(vertical: 8),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    post['title']!,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      //color: widget.isDarkMode ? Colors.black : Colors.white,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    post['content']!,
                    style: TextStyle(
                        //color: widget.isDarkMode ? Colors.black : Colors.white,
                        ),
                  ),
                ],
              ),
            ),
          );
        }).toList(),
      ],
    );
  }
}
