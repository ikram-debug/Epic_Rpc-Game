import 'package:flutter/material.dart';

class HomeScr extends StatefulWidget {
  const HomeScr({super.key});

  @override
  State<HomeScr> createState() => _HomeScrState();
}

class _HomeScrState extends State<HomeScr> {
  final List list = [
    {
      'icon': 'assest/1st Image.png',
      'name': 'Tony Newman',
      'namecolor': Color(0xffFCBD11),
      'match': '15,220',
      'rate': '98%',
      'color': Color(0xffFBD43A).withOpacity(0.44),
      'coin': 'assest/3rd Image.png',
    },
    {
      'icon': 'assest/Group 50.png',
      'name': 'Herman Weich',
      'match': '15,220',
      'rate': '98%',
      'color': Color(0xffF4F5F9),
      'coin': 'assest/Group 10 (1).png',
    },
    {
      'icon': 'assest/Group 33.png',
      'name': 'Dollie Mann',
      'namecolor': Color(0xffD0A18F),
      'match': '15,220',
      'rate': '98%',
      'color': Color(0xffF5EEE5),
      'coin': 'assest/Group 10 (2).png',
    },
    {
      'icon': 'assest/Group 33.png',
      'name': 'Ian Burtan',
      'match': '5,333',
      'rate': '98%'
    },
    {
      'icon': 'assest/1st Image.png',
      'name': 'Roxie Hansen',
      'match': '5,333',
      'rate': '98%'
    },
    {
      'icon': 'assest/1st Image.png',
      'name': 'Steven Vadghn',
      'match': '5,333',
      'rate': '98%'
    },
    {
      'icon': 'assest/Group 33.png',
      'name': 'Harriett Singletr..',
      'match': '2,333',
      'rate': '98%'
    },
    {
      'icon': 'assest/1st Image.png',
      'name': 'Henry Padilla',
      'match': '1,833',
      'rate': '98%'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey.shade100,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'assest/Path 17.png',
              width: 30,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assest/Group (1).png',
              width: 30,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assest/np_store_888658_000000.png',
              width: 30,
            ),
            label: '',
          ),
        ],
      ),
      backgroundColor: Colors.grey.shade100,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 70, left: 15, right: 8, bottom: 8),
            child: Row(
              children: [
                Image.asset('assest/1st Image.png'),
                SizedBox(width: 10),
                Text(
                  'Player 1',
                  style: TextStyle(
                    color: Color(0xff4A6495),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 40),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Text(
                          'Beginer',
                          style: TextStyle(
                            color: Color(0xffA061FF),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 8),
                        Image.asset('assest/2nd Image.png'),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 30),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text(
                          '40',
                          style: TextStyle(
                            color: Colors.amber,
                          ),
                        ),
                        SizedBox(width: 8),
                        Image.asset('assest/3rd Image.png'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40.0),
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset('assest/Group 14.png'),
                      Padding(
                        padding: EdgeInsets.only(left: 35),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Players',
                                  style: TextStyle(
                                    color: Colors.grey.shade400,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(width: 120),
                                Text(
                                  'Match',
                                  style: TextStyle(
                                    color: Colors.grey.shade400,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(width: 25),
                                Text(
                                  'Rate',
                                  style: TextStyle(
                                    color: Colors.grey.shade400,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: ListView.builder(
                          itemCount: list.length,
                          itemBuilder: (context, index) {
                            final player = list[index];
                            return Stack(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20.0, vertical: 8),
                                  child: Material(
                                    elevation: 1,
                                    borderRadius: BorderRadius.circular(20),
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20, vertical: 12),
                                      decoration: BoxDecoration(
                                        borderRadius:
                                        BorderRadius.circular(20),
                                        color: player['color'] ?? Colors.white,
                                      ),
                                      child: Row(
                                        children: [
                                          Image(
                                            image: AssetImage(player['icon']),
                                            width: 40,
                                            height: 40,
                                            fit: BoxFit.cover,
                                          ),
                                          const SizedBox(width: 15),
                                          Expanded(
                                            child: Text(
                                              player['name'],
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold,
                                                color: list[index]
                                                ['namecolor'] ??
                                                    Color(0xffACB4C3),
                                              ),
                                              maxLines: 2,
                                              overflow:
                                              TextOverflow.visible,
                                            ),
                                          ),
                                          const SizedBox(width: 10),
                                          Text(
                                            player['match'],
                                            style: const TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xff5C5C5C),
                                            ),
                                          ),
                                          const SizedBox(width: 15),
                                          Text(
                                            player['rate'],
                                            style: const TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xff5C5C5C),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 20,
                                  right: 20,
                                  child: list[index]['coin'] != null &&
                                      list[index]['coin'].isNotEmpty
                                      ? Image.asset(
                                    list[index]['coin'] ?? '',
                                    width: 20,
                                    fit: BoxFit.contain,
                                  )
                                      : const SizedBox.shrink(),
                                ),
                              ],
                            );
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
