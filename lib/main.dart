import 'package:flutter/material.dart';

void main() {
  runApp(const Basketball());
}

// ignore: camel_case_types
class Basketball extends StatefulWidget {
  const Basketball({super.key});

  @override
  State<Basketball> createState() => _BasketballState();
}


class _BasketballState extends State<Basketball> {
  int teamA = 0;
  int teamB = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Points Counter',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(Icons.sports_basketball, color: Colors.orange),
              ],
            ),
            backgroundColor: const Color(0xff1A1A1D),
          ),
          body: Column(
            children: [
              Flexible(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        const Text(
                          'Team A',
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '$teamA',
                          style: const TextStyle(
                            fontSize: 150,
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff6A1E55),
                            minimumSize: const Size(150, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          onPressed: () {
                            teamA++;
                            setState(() {});
                          },
                          child: const Text(
                            'Add 1 Point',
                            style: TextStyle(
                                fontSize: 18,
                                color: Color.fromARGB(255, 255, 255, 255)),
                          ),
                        ),
                        const Spacer(
                          flex: 1,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff6A1E55),
                            minimumSize: const Size(150, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          onPressed: () {
                            teamA += 2;
                            setState(() {});
                          },
                          child: const Text(
                            'Add 2 Point',
                            style: TextStyle(
                                fontSize: 18,
                                color: Color.fromARGB(255, 255, 255, 255)),
                          ),
                        ),
                        const Spacer(
                          flex: 1,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff6A1E55),
                            minimumSize: const Size(150, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          onPressed: () {
                            teamA += 3;
                            setState(() {});
                          },
                          child: const Text(
                            'Add 3 Point',
                            style: TextStyle(
                                fontSize: 18,
                                color: Color.fromARGB(255, 255, 255, 255)),
                          ),
                        ),
                        const Spacer(
                          flex: 12,
                        ),
                      ],
                    ),
                    const VerticalDivider(
                      color: Color.fromARGB(172, 82, 28, 28),
                      thickness: 1,
                      width: 20,
                      indent: 50,
                      endIndent: 70,
                    ),
                    Column(
                      children: [
                        const Text(
                          'Team B',
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '$teamB',
                          style: const TextStyle(
                            fontSize: 150,
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff6A1E55),
                            minimumSize: const Size(150, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          onPressed: () {
                            teamB++;
                            setState(() {});
                          },
                          child: const Text(
                            'Add 1 Point',
                            style: TextStyle(
                                fontSize: 18,
                                color: Color.fromARGB(255, 255, 255, 255)),
                          ),
                        ),
                        const Spacer(
                          flex: 1,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff6A1E55),
                            minimumSize: const Size(150, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          onPressed: () {
                            teamB += 2;
                            setState(() {});
                          },
                          child: const Text(
                            'Add 2 Point',
                            style: TextStyle(
                                fontSize: 18,
                                color: Color.fromARGB(255, 255, 255, 255)),
                          ),
                        ),
                        const Spacer(
                          flex: 1,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff6A1E55),
                            minimumSize: const Size(150, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          onPressed: () {
                            teamB += 3;
                            setState(() {});
                          },
                          child: const Text(
                            'Add 3 Point',
                            style: TextStyle(
                                fontSize: 18,
                                color: Color.fromARGB(255, 255, 255, 255)),
                          ),
                        ),
                        const Spacer(
                          flex: 12,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 70),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff6A1E55),
                    minimumSize: const Size(150, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  onPressed: () {
                    teamA = 0;
                    teamB = 0;
                    setState(() {});
                  },
                  child: const Text(
                    'Reset',
                    style: TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
