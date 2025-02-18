import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ikinyarwanda Months by SABATO, CLOUDINE, TUYIKUNDE',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> months = [
      {'name': 'MUTARAMA', 'color': Colors.brown},
      {'name': 'GASHYANTARE', 'color': Colors.green},
      {'name': 'WERURWE', 'color': Colors.green},
      {'name': 'MATA', 'color': Colors.green},
      {'name': 'GICURASI', 'color': Colors.brown},
      {'name': 'KAMENA', 'color': Colors.purple},
      {'name': 'NYAKANGA', 'color': Colors.red},
      {'name': 'KANAMA', 'color': Colors.green},
      {'name': 'NZERI', 'color': Colors.blue},
      {'name': 'UKWAKIRA', 'color': Colors.yellow},
      {'name': 'UGUSHYINGO', 'color': Colors.teal},
      {'name': 'UKUBOZA', 'color': Colors.purple},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Ikinyarwanda NA SABATO, CLOUDINE, TUYIKUNDE'),
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Amezi mu kinyarwanda NA SABATO, CLOUDINE, TUYIKUNDE',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.red),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: months.length,
              itemBuilder: (context, index) {
                return Container(
                  padding: const EdgeInsets.all(16),
                  margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                  color: months[index]['color'],
                  child: Text(
                    months[index]['name'],
                    style: const TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                );
              },
            ),
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            color: Colors.black,
            child: const Text(
              "Amezi yo mukinyarwanda na SABATO, CLOUDINE, TUYIKUNDE",
              style: TextStyle(color: Colors.white, fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
