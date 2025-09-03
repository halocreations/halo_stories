import 'package:flutter/material.dart';
import 'package:halo_stories/screens/badges.dart';
import 'package:halo_stories/screens/profile.dart';
import 'package:halo_stories/screens/quizzes.dart';
import 'package:halo_stories/screens/st_cecilia_story.dart';
import 'package:halo_stories/screens/stories_of_the_saints.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const EdgeInsets cardMargin = EdgeInsets.all(24.0); // Bigger margin
  static const EdgeInsets cardPadding = EdgeInsets.all(20.0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 54, 197, 192),
        appBar: AppBar(
          title: 
            Text('Halo Stories'),
            titleTextStyle: GoogleFonts.nunito(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            backgroundColor: const Color.fromARGB(255, 54, 197, 192),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                margin: cardMargin,
                borderOnForeground: true,
                elevation: 2,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(20),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        //Orange header
                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.symmetric(vertical: 16),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 237, 162, 34),
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(20),
                            ),
                            
                          ),
                          child: Center(
                            child: Text(
                              'SAINT OF THE DAY',
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            
                          ),
                        ),
                        //White body
                        Container(
                          height: 200,
                          padding: cardPadding,
                          color: const Color.fromARGB(255, 246, 247, 214),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(20),
                                ),
                                child: Container(
                                  width: 110,
                                  color: const Color.fromARGB(255, 246, 247, 214),
                                  child: Image.asset(
                                    'assets/St_Cecilia_First_Draft.png',
                                    fit: BoxFit.cover
                                  ),
                                )
                              ),
                              Expanded(
                                child: Padding(
                                  padding: cardPadding,
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      'Saint\nCecilia',
                                      style: TextStyle(
                                        fontSize: 40,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black87,
                                      )
                                    )
                                  )
                                )
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    onTap: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => StCeciliaStory()
                        )
                      ),
                    }
                  )
                ), 
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: cardMargin.left),
                child: SizedBox(
                  height: 200, // fixed height for both cards
                  child: Row(
                    children: [
                      Expanded(
                        child: Card(
                          margin: EdgeInsets.zero,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          color: const Color.fromARGB(255, 226, 214, 236),
                          child: InkWell(
                            borderRadius: BorderRadius.circular(20),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => StoriesOfTheSaintsScreen()
                                )
                                
                              );
                              print("Stories of the Saints card tapped!");
                            },
                            child: Container(
                              padding: cardPadding,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    flex: 2,
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 4.0,
                                      ),
                                      child: Text(
                                        'STORIES\nOF THE SAINTS',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: const Color.fromARGB(
                                            255,
                                            50,
                                            35,
                                            52,
                                          ),
                                        ),
                                        textAlign: TextAlign.center,
                                        softWrap: true,
                                        overflow: TextOverflow.visible,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                  Expanded(
                                    flex: 15,
                                    child: Image.asset(
                                      'assets/storyBookIcon.png',
                                      fit: BoxFit.cover,
                                      width: 150,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          
                        ),
                      ),
                      SizedBox(width: 24),
                      Expanded(
                        child: Card(
                          margin: EdgeInsets.zero,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          color: const Color.fromARGB(255, 255, 229, 167),
                          child: InkWell(
                            borderRadius: BorderRadius.circular(20),
                            onTap: () { 
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => QuizzesScreen(),
                                )
                                
                              );
                            },
                            child: Container(
                                padding: cardPadding,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      flex: 2,
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(horizontal: 4.0),
                                        child: Text(
                                          'QUIZZES',
                                          style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold,
                                            color: const Color.fromARGB(
                                              255,
                                              187,
                                              116,
                                              41,
                                            ),
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 15,
                                      child: Image.asset(
                                        'assets/questionMark.png',
                                        fit: BoxFit.cover,
                                        width: 150
                                      ),
                                    )
                                  ]
                              ),
                            ),
                          ),
                        
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(padding: EdgeInsets.all(8)),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: cardMargin.left),
              child: SizedBox(
                height: 230,
                child: Row(
                  children: [
                    Expanded(
                      child: Card(
                        margin: EdgeInsets.zero,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)
                        ),
                        color: const Color.fromRGBO(189, 218, 171, 1),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(20),
                          onTap: () {
                            Navigator.push(
                              context, 
                              MaterialPageRoute(
                                builder: (context) => BadgesScreen(),
                              )
                            );
                          },
                          child: Container(
                            padding: cardPadding,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 4.0),
                                    child: Text(
                                      'BADGES',
                                      style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                        color: const Color.fromARGB(255, 2, 67, 23)
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 15,
                                  child: Image.asset(
                                    'assets/goldenStarSticker.png',
                                    fit: BoxFit.cover,
                                    width: 150,
                                  ),
                                )
                                
                              ],
                            )
                          )
                        ),
                      ),
                    ),
                    SizedBox(width: 24),
                    Expanded(
                      child: Card(
                        margin: EdgeInsets.zero,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        color: const Color.fromARGB(255, 205, 250, 143),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(20),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ProfileScreen()
                              )
                            );
                          },
                          child: Container(
                            padding: cardPadding,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 4.0),
                                    child: Text(
                                      'PROFILE',
                                      style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                        color: const Color.fromARGB(
                                          255,
                                          10,
                                          35,
                                          9,
                                        ),
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 5),
                                Expanded(
                                  flex: 9,
                                  child: Image.asset(
                                    'assets/Thomas_More_First_Draft.png',
                                    fit: BoxFit.cover,
                                    width: 110
                                  ),
                                )
                              ], 
                            )
                          ),
                        )
                      ),
                    )
                  ],
                )
              )
            ),
          ],
        )
      ),
    );
  }
}