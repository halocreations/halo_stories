import 'package:flutter/material.dart';
import 'package:halo_stories/screens/profile.dart';
import 'package:halo_stories/screens/quizzes.dart';
import 'package:halo_stories/screens/st_joseph_story.dart';



class StoriesOfTheSaintsScreen extends StatefulWidget {
  const StoriesOfTheSaintsScreen({super.key});

  @override
  State<StoriesOfTheSaintsScreen> createState() => _StoriesOfTheSaintsScreenState();
}

class _StoriesOfTheSaintsScreenState extends State<StoriesOfTheSaintsScreen> {
  // Bigger margin
  static const EdgeInsets cardMargin = EdgeInsets.all(
    24.0);
  static const EdgeInsets cardPadding = EdgeInsets.all(20.0);
  int _selectedIndex = 0;


  final List<Widget> screens = const [
    StoriesOfTheSaintsScreen(),
    QuizzesScreen(),
    ProfileScreen(),
  ];
  void onScreenTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 54, 197, 192),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 243, 212, 246),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                'STORIES OF THE SAINTS',
                style: TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 72, 4, 72),
                ),
              ),
              
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              margin: cardMargin,
              borderOnForeground: true,
              color: const Color.fromARGB(255, 246, 245, 197),
              elevation: 2,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: double.infinity,
                      padding: cardPadding,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Saint George',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            )
                          ),
                          SizedBox(height: 4),
                          Row(
                            children: [
                              Text(
                                'Feast Day: April 23',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black87,
                                ),
                              ),
                              SizedBox(width: 30),
                              Container(
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 231, 222, 164),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                padding: EdgeInsets.all(6),
                                child: Text(
                                  'Story Book',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black87,
                                  ),
                                ),
                              ),
                            ]
                          ),
                          
                          Text(
                            'Soldier',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black87,
                            )
                          )
                        ]
                      )
                    ),
                  ]
                )
              )
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              margin: EdgeInsets.only(left: 24.0, right: 24.0, top: 0, bottom: 16.0),
              borderOnForeground: true,
              color: const Color.fromARGB(255, 246, 245, 197),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: double.infinity,
                      padding: cardPadding,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Saint Joseph',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: 30),
                          Row(
                            children: [
                              Text(
                                'Feast Day: March 19',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black87,
                                )
                              ),
                              SizedBox(width: 20),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => StJosephStoryScreen())
                                  );
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.0),
                                    color: const Color.fromARGB(
                                      255,
                                      231,
                                      222,
                                      164,
                                    ),
                                  ),
                                  padding: EdgeInsets.all(6),
                                  child: Text(
                                    'Story Book',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black87,
                                    ),
                                  ),
                                )
                              ),
                              
                            ],
                          ),
                          Text(
                            'Patron of Workers',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black87,
                            )
                          )
                        ],
                      )
                    )
                  ],
                )
              )
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              borderOnForeground: true,
              margin: EdgeInsets.only(top: 10.0, bottom: 16.0, right: 24.0, left: 24.0),
              color: const Color.fromARGB(255, 246, 245, 197),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: double.infinity,
                      padding: cardPadding,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Saint Patrick',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                            ),
                          
                          ),
                          SizedBox(height: 4),
                          Row(
                            children: [
                              Text(
                                'Feast Day: March 17',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black87,
                                )
                              ),
                              SizedBox(width: 20),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: const Color.fromARGB(
                                    255,
                                    231,
                                    222,
                                    164,
                                  ),
                                ),
                                padding: EdgeInsets.all(6),
                                child: Text(
                                  'Story Book',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              )
                            ],
                          ),
                          Text(
                            'Bishop',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black87,
                            )
                          )
                        ],
                      )
                    ),
                  ],
                )
              )
            )
          ]
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        showUnselectedLabels: false,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Stories'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment),
            label: 'Quizzes'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile'
          )
        ],
        currentIndex: _selectedIndex,
        onTap: onScreenTapped,
      ),
    );
  }
}
