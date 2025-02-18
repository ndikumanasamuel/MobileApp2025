import 'package:flutter/material.dart';

void main() {
  runApp(const MonthsApp());
}

class MonthsApp extends StatelessWidget {
  const MonthsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MonthsScreen(),
    );
  }
}

class MonthsScreen extends StatelessWidget {
  final List<String> months = [
    "MUTARAMA",
    "GASHYANTARE",
    "WERURWE",
    "MATA",
    "GICURASI",
    "KAMENA",
    "NYAKANGA",
    "KANAMA",
    "NZERI",
    "UKWAKIRA",
    "UGUSHYINGO",
    "UKUBOZA"
  ];

  final List<Color> colors = [
    Colors.brown,
    Colors.lightGreen,
    Colors.green,
    Colors.lightGreen.shade800,
    Colors.brown.shade300,
    Colors.purple.shade300,
    Colors.purple,
    Colors.lightGreen,
    Colors.lime,
    Colors.blueGrey,
    Colors.brown,
    Colors.brown.shade800,
  ];

  MonthsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Ikinyarwanda',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.grey,
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Amezi mu Kinyarwanda',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.red),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: months.length,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: colors[index],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          months[index],
                          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.all(12),
            width: double.infinity,
            color: Colors.brown.shade800,
            child: const Text(
              "Ayo n' amezi ya ki nyarwanda",
              style: TextStyle(fontSize: 18, color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
