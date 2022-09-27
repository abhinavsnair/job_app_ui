import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:job_app_ui/for_you.dart';
import 'package:job_app_ui/recently_add.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(Icons.menu_outlined),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Discover a New path',
                    style: GoogleFonts.teko(
                      fontSize: 40,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 50,
                        width: 300,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Row(
                            
                            children: const [
                              Icon(Icons.search,color: Colors.grey,),
                              SizedBox(width: 10,),
                              Text('Search for a job..',style: TextStyle(
                                color: Colors.grey                            ),)
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.red[400],
                            borderRadius: BorderRadius.circular(10)),
                        child: const Icon(
                          Icons.tune,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Column(
                    children: const [
                      Text(
                        'For You',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 150,
                    width: double.infinity,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        ForYou(
                            image:
                                'https://cdn-icons-png.flaticon.com/512/5969/5969323.png',
                            text: 'UI/UX Designer',
                            price: '45',
                            color: Colors.grey[850]),
                        ForYou(
                            image:
                                'https://cdn-icons-png.flaticon.com/512/300/300221.png',
                            text: 'Product Engineer',
                            price: '69',
                            color: Colors.grey[850]),
                        ForYou(
                            image:
                                'https://cdn-icons-png.flaticon.com/512/3536/3536505.png',
                            text: 'Software Engineer',
                            price: '56',
                            color: Colors.grey[850]),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const Text(
                    'Recently Added',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Expanded(
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: const [
                    SizedBox(
                      height: 3,
                    ),
                    RecentList(
                        logo:
                            'https://cdn-icons-png.flaticon.com/512/732/732229.png',
                        text1: 'UI/UX Designer',
                        text2: 'Nike',
                        price1: '45'),
                    RecentList(
                        logo:
                            'https://cdn-icons-png.flaticon.com/512/300/300221.png',
                        text1: 'Product Engineer',
                        text2: 'Google',
                        price1: '69'),
                    RecentList(
                        logo:
                            'https://cdn-icons-png.flaticon.com/512/3536/3536505.png',
                        text1: 'Software Engineer',
                        text2: 'Linkedin',
                        price1: '56'),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
