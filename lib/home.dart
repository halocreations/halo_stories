import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const EdgeInsets cardMargin = const EdgeInsets.all(24.0); // Bigger margin
  static const EdgeInsets cardPadding = const EdgeInsets.all(20.0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 54, 197, 192),
        appBar: AppBar(
          title: 
            Text('Halo Stories'),
            titleTextStyle: TextStyle(
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
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          
                        ),
                      ),
                      //White body
                      Container(
                        height: 250,
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
                                width: 200,
                                color: const Color.fromARGB(255, 246, 247, 214),
                                child: Image.asset(
                                  'assets/St_George_Third_Draft.png',
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
                                    'Saint\nGeorge',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black87,
                                    )
                                  )
                                )
                              )
                            ),
                            // Text(
                            //   'Saint\nGeorge',
                            //   style: TextStyle(
                            //     fontSize: 20,
                            //     fontWeight: FontWeight.w600,
                            //     color: Colors.black87,
                            //   ),
                            // ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ), 
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: cardMargin.left),
                child: SizedBox(
                  height: 150, // fixed height for both cards
                  child: Row(
                    children: [
                      Expanded(
                        child: Card(
                          margin: EdgeInsets.zero,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          color: const Color.fromARGB(255, 226, 214, 236),
                          child: Padding(
                            padding: cardPadding,
                            child: Center(
                              child: Text(
                                'STORIES\nOF THE SAINTS',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: const Color.fromARGB(255, 50, 35, 52),
                                ),
                                textAlign: TextAlign.center,
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
                          child: Padding(
                            padding: cardPadding,
                            child: Center(
                              child: Text(
                                'QUIZZES',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: const Color.fromARGB(255, 187, 116, 41),
                                ),
                                textAlign: TextAlign.center,
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
                height: 150,
                child: Row(
                  children: [
                    Expanded(
                      child: Card(
                        margin: EdgeInsets.zero,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)
                        ),
                        color: const Color.fromRGBO(189, 218, 171, 1),
                        child: Padding(
                          padding: cardPadding,
                          child: Center(
                            child: Text(
                              'BADGES',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: const Color.fromARGB(255, 2, 67, 23)
                              ),
                              textAlign: TextAlign.center,
                            ),
                          )
                        )
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
                        child: Padding(
                          padding: cardPadding,
                          child: Center(
                            child: Text(
                              'PROFILE',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: const Color.fromARGB(255, 10, 35, 9),
                              ),
                              textAlign: TextAlign.center,
                            ),
                          )
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