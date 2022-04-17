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
                    'Misr University for Science & Technology (MUST)',
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
        'Misr University for Science & Technology (MUST) is the first private university'
            ' established in Egypt with nearly 20,000+ students. Since 1996, '
            'MUST has been recognized for effectiveness and notability of '
            'its academic programs as well as the success of its sustainability efforts. '
            'Must is well known for its dedication to excellence.',
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
              'images/must.jpeg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            textSection,
            buttonSection,
            Image.asset(
              'images/mapmust.png',
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
