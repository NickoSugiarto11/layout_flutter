import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text('Wisata Gunung di Batu', style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                Text('Banyuwangi, Indonesia', style: TextStyle(color: Colors.grey)),
              ],
            ),
          ),
          Icon(Icons.star, color: Colors.red),
          const Text("41"),
        ],
      ),
    );
    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE')],
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'Wisata Gunung di Kota Batu menyuguhkan pemandangan alam yang menawan'
        'dengan udara sejuk khas pegunungnan. Pengunjung dapat menikmati keindahan'
        'Gunung Panderman, Gunung Banyak. Tempat ini cocok untuk rekreasi alam.',
        softWrap: true,
      ),
    );
    return MaterialApp(
      title: 'Flutter layout: Nicko Sugiarto dan 362458302119',
      home: Scaffold(
        appBar: AppBar(title: const Text('Flutter layout demo')),
        body: ListView(
          children: [
            Image.asset('images/Gunung.png', width: 600, height: 240, fit: BoxFit.cover),
            titleSection,
            buttonSection,
            textSection,
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
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: color),
          ),
        ),
      ],
    );
  }
}
