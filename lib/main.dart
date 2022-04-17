  import 'package:flutter/material.dart';


  void main() {

    runApp(const MyApp());

  }

  class MyApp extends StatelessWidget {
    const MyApp({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
      Widget titleSection = Container(
        padding: const EdgeInsets.all(32),
        child: Row(
          children: [
            Expanded(
              /*1*/
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /*2*/
                  Container(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: const Text(
                      'Candian International College',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                     fontSize: 20,

                      ),
                    ),
                  ),

                ],
              ),
            ),
            /*3*/
            Icon(
              Icons.star,
              color: Colors.black,


            ),
            const Text('4.5'),
          ],
        ),
      );

      Color color = Theme.of(context).primaryColor;

      Widget buttonSection = Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          _buildButtonColumn(color, Icons.favorite, 'www.cic.com'),
        ],
      );

      Widget textSection = const Padding(
        padding: EdgeInsets.all(32),
        child: Text(
          'CIC is the place you’ll call home for the next 4 – 5 years in your life,'
              'it’s where you will learn, grow, create, prove yourself, achieve,'
              'make friends, and succeed.'
              'Here is where you take the first step towards your future.'
              'We offer a campus life that will broaden your horizons beyond classroom walls.'
              'We offer programs of study that will equip you with all the knowledge'
              'and tools needed to succeed and be ready for your chosen career.'
              'And most importantly, we offer an environment that will encourage'
              'you to Make it Happen.',
          softWrap: true,
        ),
      );
      return MaterialApp(
        title: 'graduation project',
        debugShowCheckedModeBanner:false,
        home: Scaffold(
          body: ListView(
            children: [
              Image.asset(
                'images/cicimage.jpeg',
                width: 600,
                height: 240,
                fit: BoxFit.cover,
              ),
              titleSection,
              textSection,
              buttonSection,
              Image.asset(
                'images/map.png',
                width: 600,
                height: 240,
                fit: BoxFit.cover,
              ),

            ],
          ),
        ),
      );
    }


    Column _buildButtonColumn(Color color, IconData icon, String label) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: color),
          Container(
            margin: const EdgeInsets.only(top: 8),
            child: Text(
              label,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: color,
              ),
            ),
          ),

        ],
      );
    }
  }